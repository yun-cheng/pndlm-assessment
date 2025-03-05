import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pndlm_assessment/providers/auth_state_provider.dart';
import 'package:pndlm_assessment/ui/common/background_mask_container.dart';
import 'package:pndlm_assessment/ui/common/clock_logo.dart';

import 'widgets/login_form.dart';
import 'widgets/register_link.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _authErrorMessageListener(context, ref);

    return Scaffold(
      body: BackgroundMaskContainer(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 143),
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: ClockLogo(),
                ),
                SizedBox(height: 80),
                LoginForm(),
                SizedBox(height: 122),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: RegisterLink(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void _authErrorMessageListener(BuildContext context, WidgetRef ref) {
  ref.listen<String>(authErrorMessageProvider, (previous, next) {
    if (next.isNotEmpty) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(SnackBar(content: Text(next)));
    }
  });
}
