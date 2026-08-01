import 'package:fixtures/data/models/match_model.dart';
import 'package:fixtures/domain/entities/match.dart';
import 'package:fixtures/domain/enums/match_status.dart';
import 'package:fixtures/data/mappers/bet_market_mapper.dart';

class MatchMapper {
  static Match fromModel(MatchModel model) {
    return Match(
      id: model.id,
      competition: model.competition,
      round: model.round,
      kickoffAt: model.kickoffAt,
      team1: model.team1,
      team2: model.team2,
      team1Score: model.team1Score,
      team2Score: model.team2Score,
      imageUrl: model.imageUrl,
      alternativeImageUrl: model.alternativeImageUrl,
      status: _statusFromString(model.status),
      sport: model.sport,
      betMarkets: model.betMarkets.map(BetMarketMapper.fromModel).toList(),
    );
  }

  static MatchModel toModel(Match entity) {
    return MatchModel(
      id: entity.id,
      competition: entity.competition,
      round: entity.round,
      kickoffAt: entity.kickoffAt,
      team1: entity.team1,
      team2: entity.team2,
      team1Score: entity.team1Score,
      team2Score: entity.team2Score,
      imageUrl: entity.imageUrl,
      alternativeImageUrl: entity.alternativeImageUrl,
      status: _statusToString(entity.status),
      sport: entity.sport,
      betMarkets: entity.betMarkets.map(BetMarketMapper.toModel).toList(),
    );
  }

  static MatchStatus _statusFromString(String value) {
    switch (value) {
      case 'live':
        return MatchStatus.live;
      case 'finished':
        return MatchStatus.finished;
      case 'scheduled':
        return MatchStatus.scheduled;
      default:
        return MatchStatus.scheduled; // fallback safe
    }
  }

  static String _statusToString(MatchStatus status) {
    switch (status) {
      case MatchStatus.live:
        return 'live';
      case MatchStatus.finished:
        return 'finished';
      case MatchStatus.scheduled:
        return 'scheduled';
      case MatchStatus.paused:
        return 'paused';
      case MatchStatus.cancelled:
        return 'cancelled';
    }
  }
}
