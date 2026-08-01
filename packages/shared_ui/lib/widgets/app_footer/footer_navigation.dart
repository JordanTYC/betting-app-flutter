import 'package:flutter/material.dart';
import 'package:shared_ui/widgets/app_footer/rive_button.dart';
import 'package:styles/custom_theme_extension.dart';

class FooterNavigation extends StatelessWidget {
  final bool hasSelectedBets;
  final int currentIndex;
  final void Function(int index) onTap;

  const FooterNavigation({
    super.key,
    required this.hasSelectedBets,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final borderColor = const Color(0xFF6A7488);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      curve: Curves.easeInOut,
      width: hasSelectedBets ? 60 : 240,
      height: 60,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1),
        color: Theme.of(context).extension<CustomThemeExtension>()!.footer,
        borderRadius: BorderRadius.circular(50),
      ),
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: hasSelectedBets
            ? RiveButton(
                key: const ValueKey('single'),
                path: "packages/shared_ui/assets/flame.riv",
                currentIndex: 0,
                isPressed: currentIndex == 0,
                onTap: onTap,
              )
            : ClipRect(
                key: const ValueKey('menu'),
                child: OverflowBox(
                  maxWidth: 240,
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 240,
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RiveButton(
                          path: "packages/shared_ui/assets/flame.riv",
                          currentIndex: 0,
                          isPressed: currentIndex == 0,
                          onTap: onTap,
                        ),
                        RiveButton(
                          key: const ValueKey('flame'),
                          path: "packages/shared_ui/assets/live.riv",
                          currentIndex: 1,
                          isPressed: currentIndex == 1,
                          onTap: onTap,
                        ),
                        RiveButton(
                          path: "packages/shared_ui/assets/phone.riv",
                          currentIndex: 2,
                          isPressed: currentIndex == 2,
                          onTap: onTap,
                        ),
                        RiveButton(
                          path: "packages/shared_ui/assets/explore.riv",
                          currentIndex: 3,
                          isPressed: currentIndex == 3,
                          onTap: onTap,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
