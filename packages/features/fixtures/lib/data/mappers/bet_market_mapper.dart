import 'package:fixtures/data/mappers/odds_mapper.dart';
import 'package:fixtures/data/models/bet_market_model.dart';
import 'package:fixtures/domain/entities/bet_market.dart';

class BetMarketMapper {
  static BetMarket fromModel(BetMarketModel model) {
    return BetMarket(
      id: model.id,
      name: model.name,
      odds: model.odds.map(OddsMapper.fromModel).toList(),
    );
  }

  static BetMarketModel toModel(BetMarket entity) {
    return BetMarketModel(
      id: entity.id,
      name: entity.name,
      odds: entity.odds.map(OddsMapper.toModel).toList(),
    );
  }
}
