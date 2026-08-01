import 'package:fixtures/data/models/odds_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bet_market_model.freezed.dart';
part 'bet_market_model.g.dart';

@freezed
abstract class BetMarketModel with _$BetMarketModel {
  const factory BetMarketModel({
    required String id,
    required String name,
    required List<OddsModel> odds,
  }) = _BetMarketModel;

  factory BetMarketModel.fromJson(Map<String, dynamic> json) =>
      _$BetMarketModelFromJson(json);
}
