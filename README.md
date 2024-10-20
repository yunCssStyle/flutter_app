A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

빌드 전.

버전 체크 후 아래 진행

1. g.dart 파일 만들기.(https://marketplace.visualstudio.com/items?itemName=GaetSchwartz.build-runner)
   pub run build_runner build

2. aos
   flutter build appbundle
   flutter build appbundle --flavor dev -t lib/main_dev.dart
   flutter build appbundle --flavor qa -t lib/main_qa.dart
   flutter build appbundle --flavor prod -t lib/main_prod.dart
   flutter run --flavor dev -t lib/main_dev.dart
   apk - flutter build apk --release --target-platform=android-arm64

   flutter build ios --flavor dev -t lib/main_dev.dart

3. ios
   xcode로 빌드
   ipa - flutter build ipa

ios 빌드 안 될 때 해결법

1. iOS 빌드 캐시 삭제
   cd ios
   rm Podfile.lock
   rm Podfile
   rm -rf Pods

   pod cache clean --all

2. flutter 캐시 삭제 및 dependency 재설치
   cd .. (상위 폴더로 되돌아가기)
   flutter clean
   flutter pub get

3. pod 재설치
   cd ios
   pod install

4. 프로젝트 껐다가 다시 켜고 빌드하면 끝!

안드로이드 key 설정
https://velog.io/@gwd0311/Flutter-KeyStore%ED%8C%8C%EC%9D%BC-%EC%84%A4%EC%A0%95%ED%95%98%EA%B8%B0

flutter 인앱 결제
https://velog.io/@soonmuu/Flutter-flutter-%EC%9D%B8%EC%95%B1%EA%B2%B0%EC%A0%9C-%EA%B5%AC%ED%98%84-2

flutter 오류시 해결 방법
https://velog.io/@ayb226/Flutter-%EC%98%A4%EB%A5%98-%EB%AA%A8%EC%9D%8C-%EC%97%AC%EB%9F%AC%EA%B0%80%EC%A7%80-%EC%9D%B4%EC%9C%A0%EB%A1%9C-%EB%B9%8C%EB%93%9C%EA%B0%80-%EC%95%88-%EB%90%A0-%EB%95%8C-%ED%95%B4%EA%B2%B0%EB%B2%95

.vscode 폴더 launch.json 파일 생성후 작성
{
"version": "0.2.0",
"configurations": [
{
"name": "app",
"request": "launch",
"type": "dart"
},
{
"name": "app-prod",
"request": "launch",
"type": "dart",
"args": ["--flavor", "prod"],
"program": "lib/main_prod.dart"
},
{
"name": "app-dev",
"request": "launch",
"type": "dart",
"args": ["--flavor", "dev"],
"program": "lib/main_dev.dart"
},
{
"name": "app-qa",
"request": "launch",
"type": "dart",
"args": ["--flavor", "qa"],
"program": "lib/main_qa.dart"
},
{
"name": "app (profile mode)",
"request": "launch",
"type": "dart",
"flutterMode": "profile"
},
{
"name": "app (release mode)",
"request": "launch",
"type": "dart",
"flutterMode": "release"
}
]
}
