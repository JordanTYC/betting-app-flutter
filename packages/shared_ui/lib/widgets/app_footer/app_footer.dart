import 'package:fixtures/presentation/providers/selected_bets_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_ui/providers/shell_appbar_provider.dart';
import 'package:shared_ui/widgets/app_footer/footer_navigation.dart';
import 'package:shared_ui/widgets/app_footer/total_odds_bar.dart';
import 'package:styles/custom_theme_extension.dart';

class AppFooter extends ConsumerWidget {
  final void Function(int index) onTap;
  final VoidCallback openWheelScreen;
  final int currentIndex;

  const AppFooter({
    super.key,
    required this.onTap,
    required this.currentIndex,
    required this.openWheelScreen,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appBarState = ref.watch(shellAppBarProvider);
    final selectedBetsState = ref.watch(selectedBetsProvider);
    final hasSelectedBets = selectedBetsState.isNotEmpty;
    final Color borderColor = Color(0xFF6A7488);
    return AnimatedSlide(
      duration: const Duration(milliseconds: 100),
      offset: appBarState.visible || selectedBetsState.isNotEmpty
          ? Offset.zero
          : const Offset(0, 1),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            if (appBarState.visible)
              FooterNavigation(
                hasSelectedBets: hasSelectedBets,
                currentIndex: currentIndex,
                onTap: onTap,
              ),
            if (hasSelectedBets) const TotalOddsBar(),
            if (!hasSelectedBets) Spacer(),
            SizedBox(width: 10),
            if (appBarState.visible)
              GestureDetector(
                onTap: () {
                  openWheelScreen();
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: borderColor, width: 1),
                    shape: BoxShape.circle,
                    color: Theme.of(
                      context,
                    ).extension<CustomThemeExtension>()!.footer,
                  ),
                  child: Image.asset(
                    'assets/card.png',
                    package: 'shared_ui',
                    height: 30,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
