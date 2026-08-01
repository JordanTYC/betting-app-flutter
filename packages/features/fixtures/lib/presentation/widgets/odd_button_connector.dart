import 'package:fixtures/domain/entities/odds.dart';
import 'package:fixtures/domain/entities/selected_bet.dart';
import 'package:fixtures/domain/entities/match.dart';
import 'package:fixtures/presentation/providers/selected_bets_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_ui/widgets/odd_button.dart';

class OddButtonConnector extends ConsumerWidget {
  final Match match;
  final Odds odd;
  final SlantSide slant;

  const OddButtonConnector({
    super.key,
    required this.match,
    required this.odd,
    this.slant = SlantSide.none,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(
      selectedBetsProvider.select((state) => state[match.id]?.odd.id == odd.id),
    );

    return OddButton(
      odd: odd,
      height: 50,
      selected: selected,
      slant: slant,
      onTap: () {
        ref
            .read(selectedBetsProvider.notifier)
            .toggle(SelectedBet(match: match, odd: odd));
      },
    );
  }
}
