import 'package:flutter/material.dart';
import 'package:pndlm_assessment/constants/colors.dart';
import 'package:pndlm_assessment/constants/text_styles.dart';

class ActionButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const ActionButton(this.label, {super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 287,
      height: 50,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: ColorConstants.raspberry,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Text(label, style: TextStyleConstants.button),
      ),
    );
  }
}
