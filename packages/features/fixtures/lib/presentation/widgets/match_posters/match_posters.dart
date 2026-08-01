import 'dart:math';
import 'package:fixtures/domain/entities/match.dart';
import 'package:fixtures/presentation/widgets/frosted_card.dart';
import 'package:fixtures/presentation/widgets/little_frosted_card.dart';
import 'package:fixtures/presentation/widgets/match_posters/match_details.dart';
import 'package:fixtures/presentation/widgets/match_posters/match_poster_image.dart';
import 'package:fixtures/presentation/widgets/match_posters/match_selector.dart';
import 'package:flutter/material.dart';
import 'package:shared_ui/team_colors.dart';
import 'package:shared_ui/teams_theme.dart';

class MatchPosters extends StatefulWidget {
  final List<Match> matches;

  const MatchPosters({super.key, required this.matches});

  @override
  State<MatchPosters> createState() => _MatchPostersState();
}

class _MatchPostersState extends State<MatchPosters> {
  late final PageController _controller;

  int _currentPage = 0;

  double _page = 0;

  @override
  void initState() {
    super.initState();

    _controller = PageController();

    _controller.addListener(_handleScroll);
  }

  void _handleScroll() {
    if (!_controller.hasClients) return;

    final page = _controller.page ?? 0;

    if (_page != page) {
      setState(() {
        _page = page;
      });
    }
  }

  @override
  void dispose() {
    _controller.removeListener(_handleScroll);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final base = _page.floor();
    final next = _page.ceil();

    final opacity = _page - base;
    final currentMatch = widget.matches[_currentPage];
    final colors =
        teams[currentMatch.team1] ??
        TeamColors(
          primary: Colors.blue,
          secondary: Colors.blueAccent,
          accent: Colors.cyan,
          flag: '',
        );
    return Stack(
      fit: StackFit.expand,
      children: [
        // Image actuelle
        MatchPosterImage(
          imageUrl: widget.matches[base].imageUrl,
          team: widget.matches[base].team1,
        ),

        // Image suivante qui arrive au-dessus
        if (next != base)
          Opacity(
            opacity: opacity,
            child: MatchPosterImage(
              imageUrl: widget.matches[next].imageUrl,
              team: widget.matches[next].team1,
            ),
          ),

        Positioned(
          bottom: 130,
          left: -100,
          child: CustomPaint(
            size: const Size(250, 250),
            painter: CircleBlurPainter(
              blurSigma: 15,
              color: colors.secondary.withValues(alpha: 0.3),
            ),
          ),
        ),

        Positioned(
          bottom: 130,
          right: -100,
          child: CustomPaint(
            size: const Size(250, 250),
            painter: CircleBlurPainter(
              blurSigma: 15,
              color: colors.accent.withValues(alpha: 0.3),
            ),
          ),
        ),

        Positioned(
          left: 12,
          right: 12,
          bottom: 170,
          child: SizedBox(
            height: 200,
            child: FrostedCard(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: MatchDetails(match: currentMatch),
              ),
            ),
          ),
        ),

        Positioned(
          bottom: 0,
          child: Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  colors.primary.withValues(alpha: 0.0),
                  Theme.of(context).colorScheme.surface,
                ],
                stops: [0.3, 1.0],
              ),
            ),
          ),
        ),

        Positioned(
          left: 120,
          right: 120,
          bottom: 120,
          child: LittleFrostedCard(
            child: MatchSelector(
              matches: widget.matches,
              currentPage: _currentPage,
              onTap: (index) {
                _controller.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 350),
                  curve: Curves.easeOut,
                );
              },
            ),
          ),
        ),

        // PageView transparent uniquement pour le swipe
        Positioned.fill(
          top: 0,
          bottom: 250,
          child: PageView.builder(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: widget.matches.length,
            itemBuilder: (_, index) {
              return const SizedBox.expand();
            },
          ),
        ),
      ],
    );
  }
}

class CircleBlurPainter extends CustomPainter {
  final double blurSigma;
  final Color color;

  CircleBlurPainter({this.blurSigma = 10, this.color = Colors.red});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurSigma);

    final center = Offset(size.width / 2, size.height / 2);

    final radius = min(size.width / 2, size.height / 2);

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(covariant CircleBlurPainter oldDelegate) {
    return oldDelegate.blurSigma != blurSigma || oldDelegate.color != color;
  }
}
