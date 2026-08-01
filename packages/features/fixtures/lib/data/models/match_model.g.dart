// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MatchModel _$MatchModelFromJson(Map<String, dynamic> json) => _MatchModel(
  id: json['id'] as String,
  competition: json['competition'] as String,
  round: json['round'] as String,
  kickoffAt: DateTime.parse(json['kickoffAt'] as String),
  team1: json['team1'] as String,
  team2: json['team2'] as String,
  team1Score: (json['team1Score'] as num).toInt(),
  team2Score: (json['team2Score'] as num).toInt(),
  imageUrl: json['imageUrl'] as String,
  alternativeImageUrl: json['alternativeImageUrl'] as String,
  status: json['status'] as String,
  sport: json['sport'] as String,
  betMarkets: (json['betMarkets'] as List<dynamic>)
      .map((e) => BetMarketModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$MatchModelToJson(_MatchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'competition': instance.competition,
      'round': instance.round,
      'kickoffAt': instance.kickoffAt.toIso8601String(),
      'team1': instance.team1,
      'team2': instance.team2,
      'team1Score': instance.team1Score,
      'team2Score': instance.team2Score,
      'imageUrl': instance.imageUrl,
      'alternativeImageUrl': instance.alternativeImageUrl,
      'status': instance.status,
      'sport': instance.sport,
      'betMarkets': instance.betMarkets,
    };
