import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/pages/profile/model/new_pioneers_model.dart';
import 'package:minewarz_app/pages/profile/model/profile_list_model.dart';
import 'package:minewarz_app/pages/profile/model/profile_model.dart';
import 'package:minewarz_app/pages/profile/services/profile_service.dart';

final newProfileProvider =
    StateNotifierProvider<NewProfileProvider, ProfileListBase>((ref) {
  final profileServices =
      ref.watch(profileServicesProvider); // 프로필 정보 조회 api프로필 정보 조회 api
  return NewProfileProvider(
    profileServices: profileServices,
    ref: ref,
  );
});

class NewProfileProvider extends StateNotifier<ProfileListBase> {
  final ProfileServices profileServices;
  final Ref ref;
  NewProfileProvider({
    required this.profileServices,
    required this.ref,
  }) : super(ProfileListLoading()) {
    // getInitData();
  }

  Future<void> getInitData({int page = 0, int size = profilesPageSize}) async {
    try {
      final profileList = await profileServices.getProfileList(
          'newstat', page, size); // 프로필 리스트 정보 조회 api 호출
      state = profileList; // 프로필 리스트 정보 저장
    } catch (e) {
      // error exception catch
    }
  }

  void statAdd(PioneerModel profile) {
    final currentState = state; // 현재 상태를 복사
    if (currentState is ProfileListModel) {
      final updatedPioneers = currentState.pioneers.map((e) {
        if (e.id == profile.id) {
          // 같은 아이디 값을 가진 프로필인 경우 업데이트
          return e.copyWith(
            stat: profile.stat,
            statBonus: profile.statBonus,
          );
        } else {
          return e;
        }
      }).toList();

      final updatedProfileList = ProfileListModel(
          page: currentState.page, // 적절한 값으로 대체
          size: currentState.size, // 적절한 값으로 대체
          totalPages: currentState.totalPages, // 적절한 값으로 대체
          totalCount: currentState.totalCount, // 적절한 값으로 대체
          isFirst: currentState.isFirst, // 적절한 값으로 대체
          isLast: currentState.isLast, // 적절한 값으로 대체
          pioneers: updatedPioneers);

      state = updatedProfileList; // 상태 업데이트
      ref.read(newProfileSelectedProvider.notifier).newClear();
    }
  }

  Future<bool> read() async {
    try {
      final current = state; // 프로필 리스트를 복사
      final currentList = state.pioneers.toList(); // 프로필 리스트를 복사
      List<int> ids = [];
      for (int i = 0; i < currentList.length; i++) {
        final pioneer = currentList[i];
        // 객체의 readed false로 설정
        if (!pioneer.readed) {
          ids.add(pioneer.id);
          currentList[i] = pioneer.copyWith(readed: true);
        }
      }
      if (ids.isNotEmpty) {
        await profileServices.putProfileRead(
          body: ProfileReadModel(ids: ids),
        ); // 프로필 읽음처리 api 호출
        // 업데이트된 리스트로 ProfileListModel을 새로 생성하여 업데이트
        if (current is ProfileListModel) {
          final updatedModel = ProfileListModel(
              page: current.page, // 적절한 값으로 대체
              size: current.size, // 적절한 값으로 대체
              totalPages: current.totalPages, // 적절한 값으로 대체
              totalCount: current.totalCount, // 적절한 값으로 대체
              isFirst: current.isFirst, // 적절한 값으로 대체
              isLast: current.isLast, // 적절한 값으로 대체
              pioneers: currentList);
          state = updatedModel;
        }
      }
      return true;
    } catch (e) {
      // error exception catch
      return true;
    }
  }
}

final newProfileSelectedProvider =
    StateNotifierProvider<NewProfileSelectedProvider, PioneerModel?>((ref) {
  final profileServices = ref.watch(profileServicesProvider); // 프로필 정보 조회 api
  return NewProfileSelectedProvider(
    profileServices: profileServices,
  );
});

class NewProfileSelectedProvider extends StateNotifier<PioneerModel?> {
  final ProfileServices profileServices;
  NewProfileSelectedProvider({
    required this.profileServices,
  }) : super(null);

  void setProfileSelectedData(PioneerModel equippedData) {
    state = equippedData;
  }

  Future<void> statData() async {
    try {
      NewStatModel newStat =
          await profileServices.postProfileStat(body: PostStat(id: state!.id));
      state = state!.copyWith(
        stat: newStat.stat,
        statBonus: newStat.statBonus,
      );
    } catch (e) {
      // error exception catch
    }
  }

  void newClear() {
    if (mounted) {
      state = null;
    }
  }
}
