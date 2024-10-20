//flutter_web_auth
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:minewarz_app/common/widget/app_bar/app_bar_mzp.dart';
import 'package:minewarz_app/common/widget/full_page/full_page_layout.dart';
import 'package:minewarz_app/pages/appbar/screen/options_screen.dart';
import 'package:minewarz_app/pages/appbar/screen/trading_post_screen.dart';

// const authUrl = 'https://dev-auth.minewarz.io'; // 인증 URL
// const apiUrl = 'https://dev-game-api.minewarz.io'; // API URL

// const authUrl = 'https://game-auth.minewarz.io'; // 인증 URL
// const apiUrl = 'https://game-api.minewarz.io'; // API URL
const schemeName = 'webauthcallback'; // 로그인 콜백 스키마
const appleId = '6452947589'; // 앱 애플 아이디
const playStoreId = 'com.trimeta.minewarz'; // 앱 구글 아이디
// const appleId = '585027354';
// const playStoreId = 'com.pangsky.darkedenmgp12';
const connectTimeout = Duration(seconds: 20); // 연결 시간 초과
const profilesPageSize = 9; // 페이징이 필요한 경우 한 페이지에 보여줄 프로필 수

String sound = '';
AudioPlayer bgPlayer = AudioPlayer();
AudioPlayer audioPlayer = AudioPlayer();
AudioPlayer audioBull = AudioPlayer();
AudioPlayer audioAttack = AudioPlayer();
int soundCount = 0;

abstract class AppColor {
  AppColor._();

  static const darkGrey = Color(0xFF797979);
  static const darkGrey1 = Color(0xFF4F4F4F);
  static const lightGrey = Color(0xFFB1B1B1);
  static const lightGrey1 = Color(0xFFE2E2E2);
  static const lightGrey2 = Color(0xFFCACACA);
  static const darkYellow = Color(0xFFFAFF00);
  static const lightYellow = Color(0xFFFFEA00);
  static const lightYellow1 = Color(0xFFFFF370);
  static const lightYellow2 = Color(0xFFDAD3B4);
  static const lightYellow3 = Color(0xFFB3AB82);
  static const red = Color(0xFFF90000);
  static const lightRed = Color(0xFFFF570E);
  static const lightRed1 = Color(0xFFFF8048);
  static const lightRed2 = Color(0xFFFFC664);
  static const darkRed = Color(0xFFFF3F79);
  static const lightBule = Color(0xFF5A607D);
  static const lightBule1 = Color(0xFF505773);
  static const darkBule = Color(0xFF353A50);
  static const darkSky = Color(0xFF1EE4FF);
  static const lightSky = Color(0xFF87F1FF);
  static const lightSky1 = Color(0xFF8FDAF6);
  static const brown = Color(0xFF624124);
  static const lightBrown = Color(0xFFAD8C6F);
  static const darkBrown = Color(0xFF624124);
}

abstract class AppWidget {
  AppWidget._();
  static const fullPageLayout = FullPageLayout(
    child: TradingPostScreen(
      isProvider: false,
    ),
  );

  static const appBarMzp = AppBarMzp();
  static const optionsScreen = OptionsScreen();
  static const offset = Offset(2, 0);
  static const appbarBoxDecoration = BoxDecoration(
    image: DecorationImage(
      fit: BoxFit.fitWidth,
      repeat: ImageRepeat.noRepeat,
      alignment: Alignment.bottomCenter,
      image: AssetImage('assets/images/appbar/icon_setting.png'), // 배경 이미지
    ),
  );
  static const navColor1 = Color.fromRGBO(90, 85, 116, 1);
  static const navColor2 = Color.fromRGBO(53, 58, 80, 1);
  static const navOffset = Offset(0, 5);
}
