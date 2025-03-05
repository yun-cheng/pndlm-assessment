import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pndlm_assessment/providers/auth_state_provider.dart';
import 'package:pndlm_assessment/ui/common/checkbox_button.dart';

class RememberMeCheckbox extends ConsumerWidget {
  const RememberMeCheckbox({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CheckboxButton(
      'Remember me for 30 days',
      onChanged: (value) {
        ref.read(authStateNotifierProvider.notifier).updateRememberMe(value);
      },
    );
  }
}
