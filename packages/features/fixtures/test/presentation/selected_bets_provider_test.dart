import 'dart:async';
import 'package:fixtures/domain/entities/bet_market.dart';
import 'package:fixtures/domain/enums/match_status.dart';
import 'package:fixtures/presentation/providers/match_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fixtures/domain/entities/odds.dart';
import 'package:fixtures/domain/entities/selected_bet.dart';
import 'package:fixtures/domain/entities/match.dart';
import 'package:fixtures/presentation/providers/selected_bets_provider.dart';
import '../fakes/fake_match_repository.dart';
import '../helpers/provider_container.dart';

void main() {
  group('SelectedBets', () {
    late ProviderContainer container;
    late StreamController<List<Match>> matchesController;

    setUp(() {
      matchesController = StreamController<List<Match>>();

      container = createContainer(
        overrides: [
          matchRepositoryProvider.overrideWithValue(
            FakeMatchRepository(matchesController.stream),
          ),
        ],
      );
    });

    tearDown(() {
      matchesController.close();
    });

    test('initial state is empty', () {
      final state = container.read(selectedBetsProvider);

      expect(state, isEmpty);
    });

    test('adds a selected bet when toggled', () {
      final notifier = container.read(selectedBetsProvider.notifier);

      final match = Match(
        id: 'match-1',
        competition: 'Ligue 1',
        round: 'journée 1',
        kickoffAt: DateTime.now(),
        team1: 'Team A',
        team2: 'Team B',
        team1Score: 0,
        team2Score: 0,
        imageUrl: '',
        alternativeImageUrl: '',
        status: MatchStatus.scheduled,
        sport: 'Football',
        betMarkets: [],
      );

      final odd = Odds(id: 'odd-1', label: 'Team A', value: 2.0);

      final selectedBet = SelectedBet(match: match, odd: odd);

      notifier.toggle(selectedBet);

      final state = container.read(selectedBetsProvider);

      expect(state.length, 1);
      expect(state[match.id], selectedBet);
    });

    test('removes selected bet when toggled twice', () {
      final notifier = container.read(selectedBetsProvider.notifier);

      final match = Match(
        id: 'match-1',
        competition: 'League',
        round: '1',
        kickoffAt: DateTime.now(),
        team1: 'Team A',
        team2: 'Team B',
        team1Score: 0,
        team2Score: 0,
        imageUrl: '',
        alternativeImageUrl: '',
        status: MatchStatus.scheduled,
        sport: 'Football',
        betMarkets: [],
      );

      final odd = Odds(id: 'odd-1', label: 'Team A', value: 2.0);

      final selectedBet = SelectedBet(match: match, odd: odd);

      notifier
        ..toggle(selectedBet)
        ..toggle(selectedBet);

      final state = container.read(selectedBetsProvider);

      expect(state, isEmpty);
    });

    test(
      'updates selected bet odds when matches stream emits new data',
      () async {
        final selectedBetsSubscription = container.listen(
          selectedBetsProvider,
          (_, _) {},
        );

        addTearDown(selectedBetsSubscription.close);

        final notifier = container.read(selectedBetsProvider.notifier);

        final oldOdd = Odds(id: 'odd-1', label: 'Team A', value: 2.0);

        final oldMatch = Match(
          id: 'match-1',
          competition: 'Ligue 1',
          round: '1',
          kickoffAt: DateTime.now(),
          team1: 'Team A',
          team2: 'Team B',
          team1Score: 0,
          team2Score: 0,
          imageUrl: '',
          alternativeImageUrl: '',
          status: MatchStatus.scheduled,
          sport: 'Football',
          betMarkets: [
            BetMarket(id: '1x2', name: 'Match Result', odds: [oldOdd]),
          ],
        );

        notifier.toggle(SelectedBet(match: oldMatch, odd: oldOdd));

        expect(
          container.read(selectedBetsProvider),
          containsPair('match-1', isNotNull),
        );

        final newOdd = Odds(id: 'odd-1', label: 'Team A', value: 1.80);

        final newMatch = oldMatch.copyWith(
          betMarkets: [
            BetMarket(id: '1x2', name: 'Match Result', odds: [newOdd]),
          ],
        );

        matchesController.add([newMatch]);

        await Future<void>.delayed(Duration.zero);

        final state = container.read(selectedBetsProvider);

        expect(state['match-1']!.odd.value, 1.80);
      },
    );

    test('removes selected bet when match no longer exists', () async {
      final selectedBetsSubscription = container.listen(
        selectedBetsProvider,
        (_, _) {},
      );

      addTearDown(selectedBetsSubscription.close);

      final notifier = container.read(selectedBetsProvider.notifier);

      final odd = Odds(id: 'odd-1', label: 'Team A', value: 2.0);

      final match = Match(
        id: 'match-1',
        competition: 'Ligue 1',
        round: '1',
        kickoffAt: DateTime.now(),
        team1: 'Team A',
        team2: 'Team B',
        team1Score: 0,
        team2Score: 0,
        imageUrl: '',
        alternativeImageUrl: '',
        status: MatchStatus.scheduled,
        sport: 'Football',
        betMarkets: [
          BetMarket(id: '1x2', name: 'Match Result', odds: [odd]),
        ],
      );

      notifier.toggle(SelectedBet(match: match, odd: odd));

      expect(
        container.read(selectedBetsProvider),
        containsPair('match-1', isNotNull),
      );

      // L'API renvoie une liste où le match a disparu
      matchesController.add([]);

      await Future<void>.delayed(const Duration(milliseconds: 100));

      final state = container.read(selectedBetsProvider);

      expect(state, isEmpty);
    });
  });
}
