import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minewarz_app/pages/profile/model/profile_model.dart';
part 'new_pioneers_model.freezed.dart';
part 'new_pioneers_model.g.dart';

abstract class NewProfileBase {}

class NewProfileLoading extends NewProfileBase {}

@freezed
class NewProfileModel extends NewProfileBase with _$NewProfileModel {
  const factory NewProfileModel({
    required int page,
    required int size,
    required int totalPages,
    required int totalCount,
    required bool isFirst,
    required bool isLast,
    required List<PioneerModel> pioneers, //nft 리스트
  }) = _NewProfileModel;
  factory NewProfileModel.fromJson(Map<String, dynamic> json) =>
      _$NewProfileModelFromJson(json);
}

@freezed
class NewStatModel with _$NewStatModel {
  const factory NewStatModel({
    required int id, //nft id
    required ProfileStatModel stat, //nft 스텟
    ProfileStatModel? statBonus, //nft 스텟 보너스
  }) = _NewStatModel;
  factory NewStatModel.fromJson(Map<String, dynamic> json) =>
      _$NewStatModelFromJson(json);
}
