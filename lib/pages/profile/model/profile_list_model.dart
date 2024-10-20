import 'package:freezed_annotation/freezed_annotation.dart';

import 'profile_model.dart';
part 'profile_list_model.freezed.dart';
part 'profile_list_model.g.dart';

abstract class ProfileListBase {
  get pioneers => null;
}

class ProfileListLoading extends ProfileListBase {}

class ProfileListError extends ProfileListBase {}

@freezed
class ProfileListModel extends ProfileListBase with _$ProfileListModel {
  const factory ProfileListModel({
    required int page,
    required int size,
    required int totalPages,
    required int totalCount,
    required bool isFirst,
    required bool isLast,
    required List<PioneerModel> pioneers, //nft 리스트
  }) = _ProfileListModel;
  factory ProfileListModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileListModelFromJson(json);
}

@freezed
class ProfileEquipModel with _$ProfileEquipModel {
  const factory ProfileEquipModel({
    required int id, //nft id
    required bool equip, //장착 여부
  }) = _ProfileEquipModel;
  factory ProfileEquipModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileEquipModelFromJson(json);
}

@freezed
class ProfileReadModel with _$ProfileReadModel {
  const factory ProfileReadModel({
    required List<int> ids, //읽음처리 요청할 프로필 리스트
  }) = _ProfileReadModel;
  factory ProfileReadModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileReadModelFromJson(json);
}

@freezed
class PostStat with _$PostStat {
  const factory PostStat({
    required int id,
  }) = _PostStat;
  factory PostStat.fromJson(Map<String, dynamic> json) =>
      _$PostStatFromJson(json);
}
