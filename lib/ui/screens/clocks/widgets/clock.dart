import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pndlm_assessment/constants/assets.dart';
import 'package:pndlm_assessment/constants/colors.dart';
import 'package:pndlm_assessment/models/clock_hand_type.dart';

import 'clock_label.dart';
import 'draw_center_dot.dart';
import 'draw_hand.dart';

class Clock extends StatelessWidget {
  final String label;
  final String location;

  const Clock({super.key, required this.label, required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      constraints: BoxConstraints(maxWidth: 240),
      child: AspectRatio(
        aspectRatio: 1,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned.fill(child: SvgPicture.asset(AssetConstants.clockFace)),
            ClockLabel(label: label),
            DrawHand(
              location: location,
              type: ClockHandType.hour,
              length: 40,
              width: 4,
              color: ColorConstants.raspberry,
            ),
            DrawHand(
              location: location,
              type: ClockHandType.minute,
              length: 80,
              width: 4,
              color: ColorConstants.raspberry,
            ),
            DrawHand(
              location: location,
              type: ClockHandType.second,
              length: 80,
              width: 1,
              color: ColorConstants.raspberry,
            ),
            DrawCenterDot(),
          ],
        ),
      ),
    );
  }
}
