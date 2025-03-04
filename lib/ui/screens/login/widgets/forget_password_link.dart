import 'package:flutter/material.dart';
import 'package:pndlm_assessment/constants/text_styles.dart';

class ForgetPasswordLink extends StatelessWidget {
  const ForgetPasswordLink({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(SnackBar(content: Text('Coming soon...')));
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 3),
        minimumSize: Size.zero,
      ),
      child: Text('Forgot Password?', style: TextStyleConstants.link),
    );
  }
}
