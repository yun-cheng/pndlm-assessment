import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../providers/auth_state_provider.dart';
import '../../../common/action_button.dart';

class LogoutButton extends ConsumerWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authIsLoading = ref.watch(authIsLoadingProvider);

    return ActionButton(
      'Logout',
      onPressed:
          authIsLoading
              ? null
              : () {
                ref.read(authStateNotifierProvider.notifier).handleLogout();
              },
    );
  }
}
