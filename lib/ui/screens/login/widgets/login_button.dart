import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pndlm_assessment/providers/auth_state_provider.dart';
import 'package:pndlm_assessment/ui/common/action_button.dart';

class LoginButton extends ConsumerWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authIsLoading = ref.watch(authIsLoadingProvider);

    return ActionButton(
      'Login',
      onPressed:
          authIsLoading
              ? null
              : () {
                ref.read(authStateNotifierProvider.notifier).handleLogin();
              },
    );
  }
}
