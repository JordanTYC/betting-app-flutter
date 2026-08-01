import 'dart:math' as math;
import 'package:fixtures/domain/entities/odds.dart';
import 'package:flutter/material.dart';
import 'package:styles/custom_theme_extension.dart';
import 'package:styles/odd_probability_color.dart';

enum SlantSide { none, left, right }

class OddButton extends StatefulWidget {
  final Odds odd;
  final bool selected;
  final SlantSide slant;
  final double height;
  final VoidCallback? onTap;

  const OddButton({
    super.key,
    required this.odd,
    required this.selected,
    this.slant = SlantSide.none,
    this.height = 50,
    this.onTap,
  });

  @override
  State<OddButton> createState() => _OddButtonState();
}

class _OddButtonState extends State<OddButton> with TickerProviderStateMixin {
  late final AnimationController _selectionController;
  late final AnimationController _pressController;
  late final AnimationController _updateController;
  bool _isUpdating = false;
  Offset _tapPosition = Offset.zero;
  late bool _displaySelected;
  bool tap = false;

  @override
  void initState() {
    super.initState();
    _displaySelected = widget.selected;

    _selectionController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );

    _pressController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 120),
    );

    _updateController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  void _onTap(TapDownDetails details) {
    _tapPosition = details.localPosition;
    tap = true;
    _displaySelected = !_displaySelected;

    _selectionController.forward(from: 0).then((_) {
      tap = false;
    });

    _pressController.forward(from: 0).then((_) {
      if (!mounted) return;
      _pressController.reverse();
    });

    widget.onTap?.call();
  }

  @override
  void didUpdateWidget(covariant OddButton oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Qu'une seule côte sélectionnée par match
    if (widget.selected != oldWidget.selected) {
      _displaySelected = widget.selected;
      if (!tap) {
        _selectionController.value = 1;
      }
    }

    // Update de la côte
    if (widget.odd != oldWidget.odd) {
      _isUpdating = true;

      _updateController.forward(from: 0).then((_) async {
        await Future.delayed(const Duration(milliseconds: 400));

        if (!mounted) return;

        _updateController.reverse();

        setState(() {
          _isUpdating = false;
        });
      });
    }
  }

  @override
  void dispose() {
    _selectionController.dispose();
    _pressController.dispose();
    _updateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final activeColor = theme
        .extension<CustomThemeExtension>()!
        .oddButtonActive;

    final probabilityColor = getOddProbabilityColor(context, widget.odd.value);

    return GestureDetector(
      onTapDown: _onTap,
      child: AnimatedBuilder(
        animation: Listenable.merge([
          _pressController,
          _updateController,
          _selectionController,
        ]),
        builder: (context, child) {
          final scale = 1 - (_pressController.value * 0.05);
          final updateProgress = Curves.easeOutCubic.transform(
            _updateController.value,
          );

          final double progress = (_displaySelected && !tap)
              ? 1
              : Curves.easeOutCubic.transform(_selectionController.value);

          Color normalColor;
          if (_displaySelected && tap) {
            normalColor = theme.colorScheme.secondary;
          } else if (_displaySelected) {
            normalColor = activeColor;
          } else {
            normalColor = theme.colorScheme.secondary;
          }

          final backgroundColor = updateProgress > 0
              ? Color.lerp(normalColor, probabilityColor, updateProgress)!
              : normalColor;

          final targetTextColor = (!_isUpdating && _displaySelected)
              ? theme.colorScheme.secondary
              : theme.colorScheme.onSurface;

          final textColor = Color.lerp(
            theme.colorScheme.onSurface,
            targetTextColor,
            progress,
          )!;

          return Transform.scale(
            scale: scale,
            child: ClipPath(
              clipper: SlantedClipper(side: widget.slant),
              child: SizedBox(
                height: widget.slant == SlantSide.none
                    ? widget.height - SlantedClipper.slope
                    : widget.height,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final maxRadius =
                        math.sqrt(
                          math.pow(constraints.maxWidth, 2) +
                              math.pow(constraints.maxHeight, 2),
                        ) *
                        1.2;
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned.fill(
                          child: ColoredBox(color: backgroundColor),
                        ),

                        if (progress > 0 && !_isUpdating && _displaySelected)
                          Positioned(
                            left: _tapPosition.dx - maxRadius * progress,
                            top: _tapPosition.dy - maxRadius * progress,
                            width: maxRadius * 2 * progress,
                            height: maxRadius * 2 * progress,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: activeColor,
                              ),
                            ),
                          ),

                        if (!_isUpdating && _displaySelected)
                          Positioned.fill(
                            child: IgnorePointer(
                              child: CustomPaint(
                                painter: SlantedBorderPainter(
                                  side: widget.slant,
                                  color: theme.colorScheme.secondary,
                                  strokeWidth: 2,
                                ),
                              ),
                            ),
                          ),

                        Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                widget.odd.label,
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  height: 0.9,
                                ),
                              ),
                              Text(
                                widget.odd.value.toString().replaceAll(
                                  '.',
                                  ',',
                                ),
                                style: TextStyle(
                                  color: textColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic,
                                  height: 0.9,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class SlantedClipper extends CustomClipper<Path> {
  static const double slope = 5.0;

  final SlantSide side;

  SlantedClipper({required this.side});

  @override
  Path getClip(Size size) {
    final radius = 7.0;
    final slope = SlantedClipper.slope;

    final path = Path();

    switch (side) {
      case SlantSide.none:
        path.addRRect(
          RRect.fromRectAndRadius(Offset.zero & size, Radius.circular(radius)),
        );
        break;

      case SlantSide.left:
        // pente descendante gauche -> droite
        path.moveTo(radius, 0);

        path.lineTo(size.width - radius, slope);

        path.quadraticBezierTo(size.width, slope, size.width, slope + radius);

        path.lineTo(size.width, size.height - radius);

        path.quadraticBezierTo(
          size.width,
          size.height,
          size.width - radius,
          size.height,
        );

        path.lineTo(radius, size.height);

        path.quadraticBezierTo(0, size.height, 0, size.height - radius);

        path.lineTo(0, radius);

        path.quadraticBezierTo(0, 0, radius, 0);

        break;

      case SlantSide.right:
        // pente descendante droite -> gauche
        path.moveTo(radius, slope);

        path.lineTo(size.width - radius, 0);

        path.quadraticBezierTo(size.width, 0, size.width, radius);

        path.lineTo(size.width, size.height - radius);

        path.quadraticBezierTo(
          size.width,
          size.height,
          size.width - radius,
          size.height,
        );

        path.lineTo(radius, size.height);

        path.quadraticBezierTo(0, size.height, 0, size.height - radius);

        path.lineTo(0, slope + radius);

        path.quadraticBezierTo(0, slope, radius, slope);

        break;
    }

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant SlantedClipper oldClipper) {
    return oldClipper.side != side;
  }
}

// Pour la bordure du bouton
class SlantedBorderPainter extends CustomPainter {
  final SlantSide side;
  final Color color;
  final double strokeWidth;

  SlantedBorderPainter({
    required this.side,
    required this.color,
    this.strokeWidth = 2,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final path = SlantedClipper(side: side).getClip(size);

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant SlantedBorderPainter oldDelegate) {
    return oldDelegate.side != side ||
        oldDelegate.color != color ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}
