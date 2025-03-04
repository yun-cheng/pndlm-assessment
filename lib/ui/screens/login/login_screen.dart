import 'package:flutter/material.dart';
import 'package:pndlm_assessment/ui/common/background_mask_container.dart';
import 'package:pndlm_assessment/ui/common/clock_logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundMaskContainer(
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
            ],
          ),
        ),
      ),
    );
  }
}
