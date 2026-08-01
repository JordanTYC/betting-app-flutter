// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'odds_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OddsModel _$OddsModelFromJson(Map<String, dynamic> json) => _OddsModel(
  id: json['id'] as String,
  label: json['label'] as String,
  value: (json['value'] as num).toDouble(),
);

Map<String, dynamic> _$OddsModelToJson(_OddsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'value': instance.value,
    };
