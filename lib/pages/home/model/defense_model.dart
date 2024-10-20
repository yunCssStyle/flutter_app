import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minewarz_app/pages/action/model/target_list_model.dart';
part 'defense_model.freezed.dart';
part 'defense_model.g.dart';

abstract class DefenseBase {}

class DefenseLoading extends DefenseBase {}

@freezed
class DefenseModel extends DefenseBase with _$DefenseModel {
  const factory DefenseModel({
    required int myDefenceRounds,
    required List<DefenseListModel> defenceHistories,
  }) = _DefenseModel;
  factory DefenseModel.fromJson(Map<String, dynamic> json) =>
      _$DefenseModelFromJson(json);
}

@freezed
class DefenseListModel with _$DefenseListModel {
  const factory DefenseListModel({
    required int defenceId,
    required String revengeExpiredTime,
    required int attackedTime,
    required String targetNickname,
    required int round,
    required int totalRound,
    required num lostAmount,
    required int statBonus,
    required ProfileModel profile,
    required bool readed,
    required bool isExecute,
    required bool isRevenge,
  }) = _DefenseListModel;
  factory DefenseListModel.fromJson(Map<String, dynamic> json) =>
      _$DefenseListModelFromJson(json);
}

@freezed
class DefenseIdsModel with _$DefenseIdsModel {
  factory DefenseIdsModel({
    required List<int> ids,
  }) = _DefenseIdsModel;
  factory DefenseIdsModel.fromJson(Map<String, dynamic> json) =>
      _$DefenseIdsModelFromJson(json);
}
