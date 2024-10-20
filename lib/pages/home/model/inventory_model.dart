import 'package:freezed_annotation/freezed_annotation.dart';
part 'inventory_model.freezed.dart';
part 'inventory_model.g.dart';

abstract class InventoryBase {}

class InventoryLoading extends InventoryBase {}

@freezed
class InventoryModel extends InventoryBase with _$InventoryModel {
  factory InventoryModel({
    DataModel? data,
  }) = _InventoryModel;
  factory InventoryModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryModelFromJson(json);
}

@freezed
class DataModel with _$DataModel {
  factory DataModel({
    required TicketModel ticket,
    required List<MinesListModel> mines,
  }) = _DataModel;
  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}

@freezed
class MinesListModel with _$MinesListModel {
  factory MinesListModel({
    required int id,
    required int level,
    required int miningPower,
    required bool readed,
    required bool active,
    required bool locked,
    required int energy,
  }) = _MinesListModel;
  factory MinesListModel.fromJson(Map<String, dynamic> json) =>
      _$MinesListModelFromJson(json);

  MinesListModel._();

  bool isLevel(MinesListModel other) {
    return other != this && other.level == level && other.level < 10;
  }
}

@freezed
class TicketModel with _$TicketModel {
  factory TicketModel({
    required int count,
    required bool readed,
    bool? look,
  }) = _TicketModel;
  factory TicketModel.fromJson(Map<String, dynamic> json) =>
      _$TicketModelFromJson(json);
}

abstract class InventoryMapBase {}

class InventoryMapLoading extends InventoryMapBase {}

@freezed
class InventoryMapModel extends InventoryMapBase with _$InventoryMapModel {
  factory InventoryMapModel({
    DataMapModel? data,
  }) = _InventoryMapModel;
  factory InventoryMapModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryMapModelFromJson(json);
}

@freezed
class DataMapModel with _$DataMapModel {
  factory DataMapModel({
    required List<MinesListMapModel> mines,
  }) = _DataMapModel;
  factory DataMapModel.fromJson(Map<String, dynamic> json) =>
      _$DataMapModelFromJson(json);
}

@freezed
class MinesListMapModel with _$MinesListMapModel {
  factory MinesListMapModel({
    required int level,
    required int miningPower,
  }) = _MinesListMapModel;
  factory MinesListMapModel.fromJson(Map<String, dynamic> json) =>
      _$MinesListMapModelFromJson(json);
}

@freezed
class InventoryIdsModel with _$InventoryIdsModel {
  factory InventoryIdsModel({
    required List<int> ids,
  }) = _InventoryIdsModel;
  factory InventoryIdsModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryIdsModelFromJson(json);
}

@freezed
class ActivateModel with _$ActivateModel {
  factory ActivateModel({
    required int id,
    required bool active,
  }) = _ActivateModel;
  factory ActivateModel.fromJson(Map<String, dynamic> json) =>
      _$ActivateModelFromJson(json);
}

abstract class UpgradeBase {}

class UpgradeLoading extends UpgradeBase {}

@freezed
class UpgradeGetModel extends UpgradeBase with _$UpgradeGetModel {
  factory UpgradeGetModel({
    required num cost,
    required UpgradeMineModel upgradeMine,
  }) = _UpgradeGetModel;
  factory UpgradeGetModel.fromJson(Map<String, dynamic> json) =>
      _$UpgradeGetModelFromJson(json);
}

@freezed
class UpgradeMineModel extends UpgradeBase with _$UpgradeMineModel {
  factory UpgradeMineModel({
    required int level,
    required int miningPower,
    required bool readed,
    required bool active,
    required bool locked,
    required int energy,
  }) = _UpgradeMineModel;
  factory UpgradeMineModel.fromJson(Map<String, dynamic> json) =>
      _$UpgradeMineModelFromJson(json);
}
