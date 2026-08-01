import 'package:fixtures/domain/entities/selected_bet.dart';
import 'package:fixtures/domain/entities/match.dart';
import 'package:fixtures/presentation/providers/match_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_bets_provider.g.dart';

@riverpod
class SelectedBets extends _$SelectedBets {
  @override
  Map<String, SelectedBet> build() {
    ref.listen(matchesProvider, (previous, next) {
      next.whenData(_syncWithMatches);
    });

    return {};
  }

  void _syncWithMatches(List<Match> matches) {
    final current = {...state};

    final matchesById = {for (final match in matches) match.id: match};

    // Supprime les matchs qui n'existent plus
    current.removeWhere((matchId, _) => !matchesById.containsKey(matchId));

    final updatedSelectedBets = <String, SelectedBet>{};

    for (final entry in current.entries) {
      final selectedBet = entry.value;
      final updatedMatch = matchesById[entry.key];

      if (updatedMatch == null) continue;

      final betMarket = updatedMatch.vsBetMarket;

      if (betMarket == null) {
        continue;
      }

      final updatedOdd = betMarket.odds
          .where((odd) => odd.id == selectedBet.odd.id)
          .firstOrNull;

      // La cote n'existe plus dans l'API
      if (updatedOdd == null) {
        continue;
      }

      updatedSelectedBets[entry.key] = SelectedBet(
        match: updatedMatch,
        odd: updatedOdd,
      );
    }

    state = updatedSelectedBets;
  }

  void toggle(SelectedBet bet) {
    final current = {...state};

    final existing = current[bet.match.id];

    if (existing != null && existing.odd == bet.odd) {
      current.remove(bet.match.id);
    } else {
      current[bet.match.id] = bet;
    }

    state = current;
  }
}
