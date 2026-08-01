import 'package:flutter/widgets.dart';
import 'package:shared_ui/widgets/vs_flags.dart';
import 'package:fixtures/domain/entities/match.dart';

class MatchSelector extends StatelessWidget {
  final List<Match> matches;
  final int currentPage;
  final Function(int) onTap;

  const MatchSelector({
    super.key,
    required this.matches,
    required this.currentPage,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(matches.length, (index) {
        final selected = index == currentPage;

        return GestureDetector(
          onTap: () => onTap(index),
          child: AnimatedScale(
            scale: selected ? 1.25 : 0.85,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOutBack,
            child: AnimatedOpacity(
              opacity: selected ? 1 : 0.55,
              duration: const Duration(milliseconds: 300),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: VsFlags(
                  radius: 10,
                  team1: matches[index].team1,
                  team2: matches[index].team2,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
