import 'package:flutter/material.dart';

import 'account_input_field.dart';
import 'forget_password_link.dart';
import 'password_input_field.dart';
import 'remember_me_checkbox.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 303,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AccountInputField(),
          SizedBox(height: 24),
          PasswordInputField(),
          SizedBox(height: 10),
          Align(alignment: Alignment.centerRight, child: ForgetPasswordLink()),
          SizedBox(height: 27),
          Padding(
            padding: const EdgeInsets.only(left: 4),
            child: RememberMeCheckbox(),
          ),
        ],
      ),
    );
  }
}
