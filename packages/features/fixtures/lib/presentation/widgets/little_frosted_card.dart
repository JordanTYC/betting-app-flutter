import 'dart:ui';
import 'package:flutter/material.dart';

class LittleFrostedCard extends StatelessWidget {
  final Widget child;

  const LittleFrostedCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 50,
      child: ClipPath(
        clipper: FrostedCardClipper(),
        child: Stack(
          fit: StackFit.expand,
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
              child: Container(color: Colors.white.withValues(alpha: 0.03)),
            ),

            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withValues(alpha: 0.01),
                    Colors.white.withValues(alpha: 0.05),
                    Colors.white.withValues(alpha: 0.14),
                  ],
                  stops: const [0.0, 0.65, 1.0],
                ),
              ),
            ),

            CustomPaint(painter: FrostedBorderPainter()),

            Padding(padding: const EdgeInsets.all(10), child: child),
          ],
        ),
      ),
    );
  }
}

class FrostedCardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    final bottomWidth = size.width * 0.75;
    final offset = (size.width - bottomWidth) / 2;

    final bottomLeft = offset;
    final bottomRight = size.width - offset;

    const curveHeight = 20.0;

    path.moveTo(0, 0);

    path.lineTo(size.width, 0);

    path.lineTo(bottomRight + 6, size.height - curveHeight);

    path.cubicTo(
      bottomRight + 2,
      size.height - 8,
      bottomRight - 6,
      size.height,
      bottomRight - 20,
      size.height,
    );

    path.lineTo(bottomLeft + 20, size.height);

    path.cubicTo(
      bottomLeft + 6,
      size.height,
      bottomLeft - 2,
      size.height - 8,
      bottomLeft - 6,
      size.height - curveHeight,
    );

    path.lineTo(0, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class FrostedBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    final bottomWidth = size.width * 0.75;
    final offset = (size.width - bottomWidth) / 2;

    final bottomLeft = offset;
    final bottomRight = size.width - offset;

    const curveHeight = 20.0;

    path.moveTo(0, 0);

    path.lineTo(size.width, 0);

    path.lineTo(bottomRight + 6, size.height - curveHeight);

    path.cubicTo(
      bottomRight + 2,
      size.height - 8,
      bottomRight - 6,
      size.height,
      bottomRight - 20,
      size.height,
    );

    path.lineTo(bottomLeft + 20, size.height);

    path.cubicTo(
      bottomLeft + 6,
      size.height,
      bottomLeft - 2,
      size.height - 8,
      bottomLeft - 6,
      size.height - curveHeight,
    );

    path.lineTo(0, 0);

    path.close();

    final borderPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.2
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromARGB(20, 255, 255, 255),
          Color.fromARGB(55, 255, 255, 255),
          Color.fromARGB(180, 255, 255, 255),
        ],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    canvas.drawPath(path, borderPaint);

    final glowPaint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..color = Colors.white.withValues(alpha: 0.15)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);

    canvas.drawPath(path, glowPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
