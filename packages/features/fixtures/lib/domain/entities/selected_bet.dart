import 'package:fixtures/domain/entities/odds.dart';
import 'package:fixtures/domain/entities/match.dart';

class SelectedBet {
  final Match match;
  final Odds odd;

  const SelectedBet({required this.match, required this.odd});
}
