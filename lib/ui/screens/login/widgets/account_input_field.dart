import 'package:flutter/material.dart';
import 'package:pndlm_assessment/constants/text_styles.dart';
import 'package:pndlm_assessment/utils/account_validator.dart';

class AccountInputField extends StatelessWidget {
  const AccountInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email, Phone, or Username', style: TextStyleConstants.inputTitle),
        SizedBox(height: 8),
        TextFormField(
          autocorrect: false,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          autovalidateMode: AutovalidateMode.always,
          validator: (value) => accountValidator(value ?? '')?.text(),
          onChanged: (value) {},
        ),
      ],
    );
  }
}
