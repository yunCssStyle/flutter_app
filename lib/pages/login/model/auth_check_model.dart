import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_check_model.freezed.dart';
part 'auth_check_model.g.dart';

abstract class AuthCheckBase {}

class AuthCheckLoading extends AuthCheckBase {}

class AuthCheckSuccess extends AuthCheckBase {}

class AuthCheckGuest extends AuthCheckBase {}

class AuthCheckBLOCKED extends AuthCheckBase {}

@freezed
class AuthCheckModel extends AuthCheckBase with _$AuthCheckModel {
  const factory AuthCheckModel({
    required String refreshToken,
    required String accessToken,
  }) = _AuthCheckModel;
  factory AuthCheckModel.fromJson(Map<String, dynamic> json) =>
      _$AuthCheckModelFromJson(json);
}

class AuthCheckError extends AuthCheckBase {
  final String? message;
  final String code;
  final String? detail;

  AuthCheckError({
    this.message,
    required this.code,
    this.detail,
  });
}
