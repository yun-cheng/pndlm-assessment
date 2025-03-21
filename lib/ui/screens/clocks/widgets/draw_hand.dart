import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pndlm_assessment/models/clock_hand_type.dart';
import 'package:pndlm_assessment/providers/time_provider.dart';

class DrawHand extends ConsumerWidget {
  final ClockHandType type;
  final String location;
  final double length;
  final double width;
  final Color color;

  const DrawHand({
    super.key,
    required this.type,
    required this.location,
    required this.length,
    required this.width,
    required this.color,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ! Getting angleRadians individually for each hand prevents rebuilding the entire clock every second, allowing the hour and minute hands to update only once per minute
    final angleRadians = ref.watch(
      angleRadiansProvider(type: type, location: location),
    );

    return CustomPaint(
      size: Size.infinite,
      painter: _Painter(
        length: length,
        width: width,
        color: color,
        angleRadians: angleRadians,
      ),
    );
  }
}

class _Painter extends CustomPainter {
  final double length;
  final double width;
  final Color color;
  final double angleRadians;

  _Painter({
    required this.length,
    required this.width,
    required this.color,
    required this.angleRadians,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = (Offset.zero & size).center;

    // ! Calculate the actual length and width based on the clock size
    final realLength = length / 240 * size.shortestSide;
    final realWidth = width / 240 * size.shortestSide;
    final angle = angleRadians - math.pi / 2.0;
    final position =
        center + Offset(math.cos(angle), math.sin(angle)) * realLength;
    final linePaint =
        Paint()
          ..color = color
          ..strokeWidth = realWidth;

    canvas.drawLine(center, position, linePaint);
  }

  @override
  bool shouldRepaint(_Painter oldDelegate) {
    return oldDelegate.length != length ||
        oldDelegate.width != width ||
        oldDelegate.color != color ||
        oldDelegate.angleRadians != angleRadians;
  }
}
