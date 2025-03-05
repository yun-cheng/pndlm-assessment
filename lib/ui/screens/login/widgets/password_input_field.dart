import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pndlm_assessment/constants/colors.dart';
import 'package:pndlm_assessment/constants/text_styles.dart';
import 'package:pndlm_assessment/providers/auth_state_provider.dart';
import 'package:pndlm_assessment/utils/password_validator.dart';

class PasswordInputField extends HookConsumerWidget {
  const PasswordInputField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showPassword = useState(false);

    final isValidating = ref.watch(isValidatingProvider);
    final isInvalidCredentials = ref.watch(isInvalidCredentialsProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Password', style: TextStyleConstants.inputTitle),
        SizedBox(height: 8),
        TextFormField(
          obscureText: !showPassword.value,
          textInputAction: TextInputAction.done,
          autovalidateMode:
              isValidating
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
          validator:
              (value) =>
                  isInvalidCredentials
                      ? 'Invalid account or password'
                      : passwordValidator(value ?? '')?.text(),
          inputFormatters: [FilteringTextInputFormatter.deny(RegExp(r'\s'))],
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 7),
              child: IconButton(
                icon: FaIcon(
                  size: 16,
                  color: ColorConstants.blueberry,
                  showPassword.value
                      ? FontAwesomeIcons.eye
                      : FontAwesomeIcons.eyeSlash,
                ),
                onPressed: () {
                  showPassword.value = !showPassword.value;
                },
              ),
            ),
          ),
          onChanged: (value) {
            ref.read(authStateNotifierProvider.notifier).updatePassword(value);
          },
        ),
      ],
    );
  }
}
