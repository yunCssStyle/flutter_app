import 'package:freezed_annotation/freezed_annotation.dart';
part 'launcher.freezed.dart';
part 'launcher.g.dart';

@freezed
class LauncherModel with _$LauncherModel {
  const factory LauncherModel({
    required bool is_maintenance,
    required String version,
    required String message,
    required LauncherServersModel servers,
  }) = _LauncherModel;
  factory LauncherModel.fromJson(Map<String, dynamic> json) =>
      _$LauncherModelFromJson(json);
}

@freezed
class LauncherServersModel with _$LauncherServersModel {
  const factory LauncherServersModel({
    required String auth,
    required String game,
  }) = _LauncherServersModel;
  factory LauncherServersModel.fromJson(Map<String, dynamic> json) =>
      _$LauncherServersModelFromJson(json);
}
