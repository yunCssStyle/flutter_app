import 'package:freezed_annotation/freezed_annotation.dart';
part 'information_model.freezed.dart';
part 'information_model.g.dart';

abstract class InformationBase {}

class InformationLoading extends InformationBase {}

class InformationError extends InformationBase {}

@freezed
class InformationModel extends InformationBase with _$InformationModel {
  const factory InformationModel({
    required MyInModel myInformation,
  }) = _InformationModel;
  factory InformationModel.fromJson(Map<String, dynamic> json) =>
      _$InformationModelFromJson(json);
}

@freezed
class MyInModel with _$MyInModel {
  const factory MyInModel({
    required int miningPower,
    required num miningCapacity,
    required num totalGoldAcquired,
    required num attackProfit,
    required num lossesFromAttacks,
  }) = _MyInModel;
  factory MyInModel.fromJson(Map<String, dynamic> json) =>
      _$MyInModelFromJson(json);
}
