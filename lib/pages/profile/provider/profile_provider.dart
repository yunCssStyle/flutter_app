import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:minewarz_app/pages/profile/model/profile_model.dart';
import 'package:minewarz_app/pages/profile/services/profile_service.dart';

final profileProvider =
    StateNotifierProvider<ProfileProvider, ProfileBase?>((ref) {
  final profileServices = ref.watch(profileServicesProvider); // 프로필 정보 조회 api
  return ProfileProvider(
    profileServices: profileServices,
  );
});

class ProfileProvider extends StateNotifier<ProfileBase?> {
  final ProfileServices profileServices;
  ProfileProvider({
    required this.profileServices,
  }) : super(ProfileLoading()) {
    getInitData(); // 프로필 정보 조회
  }

  Future<void> getInitData() async {
    try {
      final profile = await profileServices.getProfile(); // 프로필 정보 조회 api 호출
      state = profile; // 프로필 정보 저장
    } catch (e) {
      state = ProfileError(); // 에러 상태로 변경
      // error exception catch
    }
  }

  void profileChange(PioneerModel pioneer) async {
    final currentState = state; // 현재 상태를 복사
    if (currentState is ProfileModel) {
      final updatedProfile =
          ProfileModel(pioneer: pioneer, newBadge: currentState.newBadge);
      state = updatedProfile; // 상태 업데이트
    }
  }

  void loading() async {
    state = ProfileLoading();
  }
}
