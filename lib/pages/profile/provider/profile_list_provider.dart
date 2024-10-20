import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/common/const/data.dart';
import 'package:minewarz_app/common/widget/mz_toast/mztoast.dart';
import 'package:minewarz_app/pages/appbar/provider/my_info_provider.dart';
import 'package:minewarz_app/pages/profile/model/profile_list_model.dart';
import 'package:minewarz_app/pages/profile/services/profile_service.dart';

import 'profile_provider.dart';

final profileListProvider =
    StateNotifierProvider<ProfileListProvider, ProfileListBase>((ref) {
  final profileServices = ref.watch(profileServicesProvider); // 프로필 정보 조회 api
  return ProfileListProvider(
    profileServices: profileServices,
    ref: ref,
  );
});

class ProfileListProvider extends StateNotifier<ProfileListBase> {
  final ProfileServices profileServices;
  final Ref ref;
  ProfileListProvider({
    required this.profileServices,
    required this.ref,
  }) : super(ProfileListLoading());

  Future<void> getInitData({int page = 0, int size = profilesPageSize}) async {
    state = ProfileListLoading();
    await Future.delayed(const Duration(microseconds: 200));
    try {
      final profileList = await profileServices.getProfileList(
          'endstat', page, size); // 프로필 리스트 정보 조회 api 호출
      state = profileList; // 프로필 리스트 정보 저장
    } catch (e) {
      state = ProfileListError(); // 에러 상태로 변경
      // error exception catch
    }
  }

  Future<bool> equipped(id) async {
    try {
      await profileServices.putProfileEquip(
        body: ProfileEquipModel(id: id, equip: true),
      ); // 프로필 장착 api 호출
      final current = state; // 프로필 리스트를 복사
      final currentList = state.pioneers.toList(); // 프로필 리스트를 복사
      for (int i = 0; i < currentList.length; i++) {
        final pioneer = currentList[i];
        // 주어진 id와 같은 객체의 equipped을 true로 설정
        // 나머지 객체의 equipped을 false로 설정
        if (pioneer.id == id) {
          currentList[i] = pioneer.copyWith(equipped: true);
          // equipped가 true인 객체의 정보를 profileProvider에 전달하여 업데이트
          ref.read(profileProvider.notifier).profileChange(currentList[i]);
        } else {
          currentList[i] = pioneer.copyWith(equipped: false);
        }
      }
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
        FToastShow.ftoast(
          text: 'Pioneers have been changed.',
        );
      }
      final nickname = ref.read(myInfoProvider.notifier).setStateNickname();
      await FirebaseAnalytics.instance.logEvent(
        name: "equipped_pfp",
        parameters: {"nickname": nickname},
      );
      return true;
    } catch (e) {
      // error exception catch
      return true;
    }
  }

  Future<void> unequip(id) async {
    try {
      await profileServices.putProfileEquip(
        body: ProfileEquipModel(id: id, equip: false),
      ); // 프로필 장착 api 호출
      final current = state; // 프로필 리스트를 복사
      final currentList = state.pioneers.toList(); // 프로필 리스트를 복사
      for (int i = 0; i < currentList.length; i++) {
        final pioneer = currentList[i];
        // 주어진 id와 같은 객체의 equipped을 true로 설정
        // 나머지 객체의 equipped을 false로 설정
        if (pioneer.id == id) {
          currentList[i] = pioneer.copyWith(equipped: false);
          // profileProvider을 다시 갱신
          ref.read(profileProvider.notifier).getInitData();
        } else {
          currentList[i] = pioneer.copyWith(equipped: false);
        }
      }
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
        FToastShow.ftoast(
          text: 'The pioneer returned to the camp safely.',
        );
      }
    } catch (e) {
      // error exception catch
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
