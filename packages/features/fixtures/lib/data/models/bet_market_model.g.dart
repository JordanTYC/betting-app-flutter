// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bet_market_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BetMarketModel _$BetMarketModelFromJson(Map<String, dynamic> json) =>
    _BetMarketModel(
      id: json['id'] as String,
      name: json['name'] as String,
      odds: (json['odds'] as List<dynamic>)
          .map((e) => OddsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BetMarketModelToJson(_BetMarketModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'odds': instance.odds,
    };
