import 'package:fixtures/domain/entities/bet_market.dart';
import 'package:fixtures/domain/enums/match_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'match.freezed.dart';

@freezed
abstract class Match with _$Match {
  const factory Match({
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
    required MatchStatus status,
    required String sport,
    required List<BetMarket> betMarkets,
  }) = _Match;

  const Match._();

  BetMarket? get vsBetMarket {
    for (final market in betMarkets) {
      if (market.id == "1x2") {
        return market;
      }
    }
    return null;
  }
}
