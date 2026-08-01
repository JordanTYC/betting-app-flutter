import 'package:fixtures/domain/entities/bet_market.dart';
import 'package:fixtures/domain/entities/match.dart';
import 'package:fixtures/domain/enums/match_status.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Match result odds', () {
    test('Returns the 1X2 market if it exists.', () {
      final vsMarket = BetMarket(id: '1x2', name: 'Match result', odds: []);

      final match = Match(
        id: 'match-1',
        competition: 'Premier League',
        round: '1',
        kickoffAt: DateTime.now(),
        team1: 'Team A',
        team2: 'Team B',
        team1Score: 0,
        team2Score: 0,
        imageUrl: '',
        alternativeImageUrl: '',
        status: MatchStatus.scheduled,
        sport: 'football',
        betMarkets: [vsMarket],
      );

      expect(match.vsBetMarket, vsMarket);
    });

    test('Return null if 1x2 market does not exist', () {
      final match = Match(
        id: 'match-1',
        competition: 'Premier League',
        round: '1',
        kickoffAt: DateTime.now(),
        team1: 'Team A',
        team2: 'Team B',
        team1Score: 0,
        team2Score: 0,
        imageUrl: '',
        alternativeImageUrl: '',
        status: MatchStatus.scheduled,
        sport: 'football',
        betMarkets: [BetMarket(id: 'betmarket_1', name: 'Scorers', odds: [])],
      );

      expect(match.vsBetMarket, isNull);
    });
  });
}
