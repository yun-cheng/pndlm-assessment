import 'package:flutter/material.dart';
import 'package:pndlm_assessment/constants/text_styles.dart';

class RegisterLink extends StatelessWidget {
  const RegisterLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text('Don\'t have an account?  ', style: TextStyleConstants.body),
        InkWell(
          onTap: () {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text('Coming soon...')));
          },
          child: Text('Register', style: TextStyleConstants.link),
        ),
      ],
    );
  }
}
