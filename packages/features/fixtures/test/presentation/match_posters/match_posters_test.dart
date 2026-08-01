import 'package:fixtures/domain/entities/bet_market.dart';
import 'package:fixtures/domain/entities/match.dart';
import 'package:fixtures/domain/entities/odds.dart';
import 'package:fixtures/domain/enums/match_status.dart';
import 'package:fixtures/presentation/widgets/match_posters/match_poster_image.dart';
import 'package:fixtures/presentation/widgets/match_posters/match_posters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Match fakeMatch({
    required String id,
    required String team1,
    required String team2,
  }) {
    final odd = Odds(id: 'odd-1', label: team1, value: 2.0);

    return Match(
      id: id,
      competition: 'Ligue 1',
      round: 'Journée 1',
      kickoffAt: DateTime.now(),
      team1: team1,
      team2: team2,
      team1Score: 0,
      team2Score: 0,
      imageUrl: 'test',
      alternativeImageUrl: 'test',
      status: MatchStatus.scheduled,
      sport: 'Football',
      betMarkets: [
        BetMarket(id: '1x2', name: 'Match Result', odds: [odd]),
      ],
    );
  }

  testWidgets('displays match poster image', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: SizedBox(
          width: 400,
          height: 800,
          child: MatchPosters(
            matches: [fakeMatch(id: '1', team1: 'PSG', team2: 'OM')],
          ),
        ),
      ),
    );

    await tester.pump();

    expect(find.byType(MatchPosterImage), findsOneWidget);
  });

  testWidgets('changes match after swipe', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: SizedBox(
          width: 400,
          height: 800,
          child: MatchPosters(
            matches: [
              fakeMatch(id: '1', team1: 'PSG', team2: 'OM'),
              fakeMatch(id: '2', team1: 'OM', team2: 'PSG'),
            ],
          ),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.byType(MatchPosterImage), findsOneWidget);

    await tester.drag(find.byType(PageView), const Offset(-400, 0));

    await tester.pumpAndSettle();

    expect(find.byType(MatchPosterImage), findsOneWidget);
  });
}
