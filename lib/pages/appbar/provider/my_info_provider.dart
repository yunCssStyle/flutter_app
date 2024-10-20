import 'dart:async';

import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:minewarz_app/common/storage/storage.dart';
import 'package:minewarz_app/common/widget/modal/network_error.dart';
import 'package:minewarz_app/common/widget/mz_toast/mztoast.dart';
import 'package:minewarz_app/pages/appbar/model/my_info_model.dart';
import 'package:minewarz_app/pages/appbar/services/my_info_service.dart';
import 'package:minewarz_app/pages/login/model/auth_check_model.dart';
import 'package:minewarz_app/pages/login/provider/login_provider.dart';

final myInfoProvider = StateNotifierProvider<MyInfoProvider, MyInfoBase>((ref) {
  final myInfoServices = ref.watch(myInfoServicesProvider);
  final storage = ref.watch(secureStorageProvider);
  final login = ref.watch(loginProvider);
  return MyInfoProvider(
    myInfoServices: myInfoServices,
    storage: storage,
    login: login,
    ref: ref,
  );
});

class MyInfoProvider extends StateNotifier<MyInfoBase> {
  final MyInfoServices myInfoServices;
  final FlutterSecureStorage storage;
  final AuthCheckBase? login;
  final Ref ref;
  bool _mounted = true;

  MyInfoProvider({
    required this.ref,
    required this.myInfoServices,
    required this.storage,
    required this.login,
  }) : super(MyInfoLoading()) {
    setMyInfoData(); // 멤버 정보 조회
  }

  @override
  void dispose() {
    _mounted = false; // 추가
    super.dispose();
  }

  Future<void> postMyInfoData() async {
    try {
      await myInfoServices.postMyInfo(); // 멤버 정보 조회
    } catch (e) {
      // print('error : $e');
    }
  }

  Future<void> setMyInfoData() async {
    if (login is AuthCheckSuccess) {
      try {
        final myInfo = await myInfoServices.getMyInfo(); // 멤버 정보 조회
        if (!_mounted) return;
        state = myInfo; // 멤버 정보 저장
      } on TimeoutException catch (_) {
        if (!_mounted) return;
        modalError();
      } on DioException catch (e) {
        if (!_mounted) return;

        if (e.type == DioExceptionType.connectionTimeout) {
          modalError();
        } else {
          final errorResponse = e.response!;
          if (errorResponse.data != null) {
            final errorCode = errorResponse.data['client_code'];
            if (errorCode == 'NOT_FOUND_NICKNAME') {
              state = MyInfoNickNameError(); // 멤버가 닉네임 없음시 상태값 변경
            }
          } else {
            // error exception catch
          }
        }
      }
    }
    if (login is AuthCheckGuest) {
      state = const MyInfoModel(
        member: MyInfoMember(
            id: 12,
            nickname: 'Guest',
            status: "ACTIVE",
            paidNicknameChange: false),
        balance: MyInfoWallet(gold: 1545490.164),
      );
    }
  }

  String? setStateNickname() {
    final currentList = state; // 상태값 복사
    if (currentList is MyInfoModel) {
      return currentList.member.nickname;
    }
    return null;
  }

  Future<void> reset() async {
    state = MyInfoLoading();
    await Future.delayed(const Duration(milliseconds: 500));
    setMyInfoData();
  }

  Future<bool> purchase() async {
    state = MyInfoLoading();
    return true;
  }

  Future<void> nickNameChange(String nickName) async {
    try {
      // String myJSON = '{"nickName":nickName}';
      // var json = jsonDecode(myJSON);
      await myInfoServices.postInitNickName(
          body: Nickname(nickname: nickName)); // 닉네임 입력
      setMyInfoData(); // 다시 멤버 정보 조회 후 상태값 변경
      await FirebaseAnalytics.instance.logEvent(
        name: "sign_up",
        parameters: {"nickname": nickName},
      );
    } catch (e) {
      // error exception catch
    }
  }

  Future<void> nickNameChangeOptions(String nickName) async {
    try {
      await myInfoServices.putInitNickName(
          body: Nickname(nickname: nickName)); // 닉네임 입력
      FToastShow.ftoast(
        text: 'Nickname change completed',
      );
      setMyInfoData(); // 다시 멤버 정보 조회 후 상태값 변경
    } catch (e) {
      // error exception catch
    }
  }

  Future<void> putWithdrawal() async {
    try {
      await myInfoServices.putWithdrawal();
      ref.read(loginProvider.notifier).logout(toast: false);
      FToastShow.ftoast(
        text: 'Account deleted.',
      );
    } catch (e) {
      // error exception catch
    }
  }

  String getNickname() {
    final currentList = state; // 상태값 복사
    if (currentList is MyInfoModel) {
      return currentList.member.nickname;
    }
    return 'null';
  }
}
