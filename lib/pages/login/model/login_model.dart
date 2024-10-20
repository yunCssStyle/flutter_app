import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginResModel with _$LoginResModel {
  const factory LoginResModel({
    required String accessToken,
    required String refreshToken,
  }) = _LoginResModel;
  factory LoginResModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResModelFromJson(json);
}

@freezed
class PushPutModel with _$PushPutModel {
  const factory PushPutModel({
    required String push,
  }) = _PushPutModel;
  factory PushPutModel.fromJson(Map<String, dynamic> json) =>
      _$PushPutModelFromJson(json);
}
