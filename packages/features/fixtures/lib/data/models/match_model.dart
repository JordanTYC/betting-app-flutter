import 'package:fixtures/data/models/bet_market_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_model.freezed.dart';
part 'match_model.g.dart';

@freezed
abstract class MatchModel with _$MatchModel {
  const factory MatchModel({
    required String id,
    required String competition,
    required String round,
    required DateTime kickoffAt,
    required String team1,
    required String team2,
    required int team1Score,
    required int team2Score,
    required String imageUrl,
    required String alternativeImageUrl,
    required String status,
    required String sport,
    required List<BetMarketModel> betMarkets,
  }) = _MatchModel;

  factory MatchModel.fromJson(Map<String, dynamic> json) =>
      _$MatchModelFromJson(json);
}
