import 'package:fixtures/presentation/fixtures_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:games/wheel_screen.dart';
import 'package:live/livescreen.dart';
import 'package:my_bets/mybetsscreen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:explore/explorescreen.dart';
import 'package:shared_ui/providers/shell_appbar_provider.dart';
import 'package:shared_ui/widgets/app_footer/app_footer.dart';
import 'package:shared_ui/widgets/app_header.dart';

// GoRouter configuration

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return _AppShell(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const FixturesPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/live',
              builder: (context, state) => const LiveScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/mybets',
              builder: (context, state) => const MyBetsScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/explore',
              builder: (context, state) => const ExploreScreen(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/wheel',
      parentNavigatorKey: _rootNavigatorKey,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          transitionDuration: const Duration(milliseconds: 100),
          reverseTransitionDuration: const Duration(milliseconds: 100),
          child: WheelScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: Curves.easeOutCubic,
            );
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1), // Départ en bas
                end: Offset.zero,
              ).animate(curvedAnimation),
              child: child,
            );
          },
        );
      },
    ),
  ],
);

class _AppShell extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;

  const _AppShell({required this.navigationShell});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: const AppHeader(),
      body: navigationShell,
      bottomNavigationBar: AppFooter(
        currentIndex: navigationShell.currentIndex,
        onTap: (index) {
          if (index != 0) {
            ref.read(shellAppBarProvider.notifier).setDefault();
          }

          final isSameTab = index == navigationShell.currentIndex;

          navigationShell.goBranch(
            index,
            initialLocation: isSameTab && index == 0,
          );
        },
        openWheelScreen: () {
          context.push('/wheel');
        },
      ),
    );
  }
}
