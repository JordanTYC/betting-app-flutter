import 'package:fixtures/presentation/widgets/match_posters/match_poster_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('displays match poster image', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: SizedBox(
          width: 300,
          height: 300,
          child: MatchPosterImage(imageUrl: 'test', team: 'France'),
        ),
      ),
    );

    expect(find.byType(Stack), findsOneWidget);
  });
}
