import 'package:fixtures/presentation/providers/match_provider.dart';
import 'package:fixtures/presentation/widgets/match_card.dart';
import 'package:fixtures/presentation/widgets/match_posters/match_posters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_ui/providers/shell_appbar_provider.dart';

class FixturesPage extends ConsumerStatefulWidget {
  const FixturesPage({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FixturesPageState();
}

class _FixturesPageState extends ConsumerState<FixturesPage> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(shellAppBarProvider.notifier).setTransparent();
    });
    _controller.addListener(() {
      ref
          .read(shellAppBarProvider.notifier)
          .onScroll(
            offset: _controller.offset,
            direction: _controller.position.userScrollDirection,
          );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final matchesAsync = ref.watch(matchesProvider);

    return Scaffold(
      body: CustomScrollView(
        controller: _controller,
        physics: const ClampingScrollPhysics(),
        slivers: [
          matchesAsync.when(
            data: (matches) => SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: MatchPosters(matches: matches),
                ),

                ...matches.map(
                  (match) => Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                      left: 10,
                      right: 10,
                    ),
                    child: MatchCard(match: match),
                  ),
                ),

                const SizedBox(height: 150),
              ]),
            ),

            loading: () => const SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
                child: Center(child: CircularProgressIndicator()),
              ),
            ),

            error: (e, _) => SliverToBoxAdapter(child: Text(e.toString())),
          ),
        ],
      ),
    );
  }
}
