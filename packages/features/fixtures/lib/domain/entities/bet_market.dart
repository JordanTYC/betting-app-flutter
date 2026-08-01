import 'package:fixtures/domain/entities/odds.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bet_market.freezed.dart';

@freezed
abstract class BetMarket with _$BetMarket {
  const factory BetMarket({
    required String id,
    required String name,
    required List<Odds> odds,
  }) = _BetMarket;
}
