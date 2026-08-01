import 'package:fixtures/data/models/odds_model.dart';
import 'package:fixtures/domain/entities/odds.dart';

class OddsMapper {
  static Odds fromModel(OddsModel model) {
    return Odds(id: model.id, label: model.label, value: model.value);
  }

  static OddsModel toModel(Odds entity) {
    return OddsModel(id: entity.id, label: entity.label, value: entity.value);
  }
}
