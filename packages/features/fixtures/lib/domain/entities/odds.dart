import 'package:freezed_annotation/freezed_annotation.dart';

part 'odds.freezed.dart';

@freezed
abstract class Odds with _$Odds {
  const factory Odds({
    required String id,
    required String label,
    required double value,
  }) = _Odds;
}
