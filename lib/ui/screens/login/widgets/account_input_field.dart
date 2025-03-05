import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pndlm_assessment/constants/text_styles.dart';
import 'package:pndlm_assessment/providers/auth_state_provider.dart';
import 'package:pndlm_assessment/utils/account_validator.dart';

class AccountInputField extends ConsumerWidget {
  const AccountInputField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isValidating = ref.watch(isValidatingProvider);
    final isInvalidCredentials = ref.watch(isInvalidCredentialsProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email, Phone, or Username', style: TextStyleConstants.inputTitle),
        SizedBox(height: 8),
        TextFormField(
          autocorrect: false,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          autovalidateMode:
              isValidating
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
          validator:
              (value) =>
                  isInvalidCredentials
                      ? 'Invalid account or password'
                      : accountValidator(value ?? '')?.text(),
          onChanged: (value) {
            ref.read(authStateNotifierProvider.notifier).updateAccount(value);
          },
        ),
      ],
    );
  }
}
