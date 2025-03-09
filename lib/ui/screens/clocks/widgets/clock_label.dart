import 'package:flutter/material.dart';
import 'package:pndlm_assessment/constants/text_styles.dart';

class ClockLabel extends StatelessWidget {
  final String label;

  const ClockLabel({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // ! Adjust the label size and position according to the clock size
        return Transform.translate(
          offset: Offset(0, 150 / 240 * constraints.maxWidth),
          child: Transform.scale(
            scale: constraints.maxWidth / 240,
            child: Text(label, style: TextStyleConstants.clock),
          ),
        );
      },
    );
  }
}
