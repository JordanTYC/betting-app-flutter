import 'package:fixtures/presentation/providers/selected_bets_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TotalOddsBar extends ConsumerWidget {
  const TotalOddsBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedBets = ref.watch(selectedBetsProvider);

    final totalOdds = selectedBets.values.fold<double>(
      1.0,
      (total, bet) => total * bet.odd.value,
    );

    final labels = selectedBets.values.map((bet) => bet.odd.label).join(' - ');

    return Expanded(
      child: Container(
        height: 60,
        margin: const EdgeInsets.only(left: 10),
        padding: const EdgeInsets.only(left: 20, right: 6),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 85),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  labels,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            Container(
              height: 48,
              width: 75,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                child: Text(
                  totalOdds.toStringAsFixed(2).replaceAll('.', ','),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
