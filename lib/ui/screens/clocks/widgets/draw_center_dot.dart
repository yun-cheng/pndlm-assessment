import 'package:flutter/material.dart';
import 'package:pndlm_assessment/constants/colors.dart';

class DrawCenterDot extends StatelessWidget {
  const DrawCenterDot({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(size: Size.infinite, painter: _Painter());
  }
}

class _Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = (Offset.zero & size).center;

    final radius = 6 / 240 * size.shortestSide;
    final circlePaint = Paint()..color = ColorConstants.softBlue;

    canvas.drawCircle(center, radius, circlePaint);
  }

  @override
  bool shouldRepaint(_Painter oldDelegate) {
    return false;
  }
}
