// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventoryModelImpl _$$InventoryModelImplFromJson(Map<String, dynamic> json) =>
    _$InventoryModelImpl(
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InventoryModelImplToJson(
        _$InventoryModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      ticket: TicketModel.fromJson(json['ticket'] as Map<String, dynamic>),
      mines: (json['mines'] as List<dynamic>)
          .map((e) => MinesListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'ticket': instance.ticket,
      'mines': instance.mines,
    };

_$MinesListModelImpl _$$MinesListModelImplFromJson(Map<String, dynamic> json) =>
    _$MinesListModelImpl(
      id: json['id'] as int,
      level: json['level'] as int,
      miningPower: json['miningPower'] as int,
      readed: json['readed'] as bool,
      active: json['active'] as bool,
      locked: json['locked'] as bool,
      energy: json['energy'] as int,
    );

Map<String, dynamic> _$$MinesListModelImplToJson(
        _$MinesListModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'miningPower': instance.miningPower,
      'readed': instance.readed,
      'active': instance.active,
      'locked': instance.locked,
      'energy': instance.energy,
    };

_$TicketModelImpl _$$TicketModelImplFromJson(Map<String, dynamic> json) =>
    _$TicketModelImpl(
      count: json['count'] as int,
      readed: json['readed'] as bool,
      look: json['look'] as bool?,
    );

Map<String, dynamic> _$$TicketModelImplToJson(_$TicketModelImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'readed': instance.readed,
      'look': instance.look,
    };

_$InventoryMapModelImpl _$$InventoryMapModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InventoryMapModelImpl(
      data: json['data'] == null
          ? null
          : DataMapModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InventoryMapModelImplToJson(
        _$InventoryMapModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataMapModelImpl _$$DataMapModelImplFromJson(Map<String, dynamic> json) =>
    _$DataMapModelImpl(
      mines: (json['mines'] as List<dynamic>)
          .map((e) => MinesListMapModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataMapModelImplToJson(_$DataMapModelImpl instance) =>
    <String, dynamic>{
      'mines': instance.mines,
    };

_$MinesListMapModelImpl _$$MinesListMapModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MinesListMapModelImpl(
      level: json['level'] as int,
      miningPower: json['miningPower'] as int,
    );

Map<String, dynamic> _$$MinesListMapModelImplToJson(
        _$MinesListMapModelImpl instance) =>
    <String, dynamic>{
      'level': instance.level,
      'miningPower': instance.miningPower,
    };

_$InventoryIdsModelImpl _$$InventoryIdsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InventoryIdsModelImpl(
      ids: (json['ids'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$InventoryIdsModelImplToJson(
        _$InventoryIdsModelImpl instance) =>
    <String, dynamic>{
      'ids': instance.ids,
    };

_$ActivateModelImpl _$$ActivateModelImplFromJson(Map<String, dynamic> json) =>
    _$ActivateModelImpl(
      id: json['id'] as int,
      active: json['active'] as bool,
    );

Map<String, dynamic> _$$ActivateModelImplToJson(_$ActivateModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
    };

_$UpgradeGetModelImpl _$$UpgradeGetModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpgradeGetModelImpl(
      cost: json['cost'] as num,
      upgradeMine: UpgradeMineModel.fromJson(
          json['upgradeMine'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpgradeGetModelImplToJson(
        _$UpgradeGetModelImpl instance) =>
    <String, dynamic>{
      'cost': instance.cost,
      'upgradeMine': instance.upgradeMine,
    };

_$UpgradeMineModelImpl _$$UpgradeMineModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpgradeMineModelImpl(
      level: json['level'] as int,
      miningPower: json['miningPower'] as int,
      readed: json['readed'] as bool,
      active: json['active'] as bool,
      locked: json['locked'] as bool,
      energy: json['energy'] as int,
    );

Map<String, dynamic> _$$UpgradeMineModelImplToJson(
        _$UpgradeMineModelImpl instance) =>
    <String, dynamic>{
      'level': instance.level,
      'miningPower': instance.miningPower,
      'readed': instance.readed,
      'active': instance.active,
      'locked': instance.locked,
      'energy': instance.energy,
    };
