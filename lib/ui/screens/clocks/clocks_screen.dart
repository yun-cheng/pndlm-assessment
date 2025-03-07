import 'package:flutter/material.dart';
import 'package:pndlm_assessment/ui/common/background_mask_container.dart';

import 'widgets/clock.dart';
import 'widgets/logout_button.dart';

class ClocksScreen extends StatelessWidget {
  const ClocksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundMaskContainer(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                SizedBox(height: 88),
                Clock(label: 'Las Vegas'),
                SizedBox(height: 25),
                Clock(label: 'Taipei'),
                SizedBox(height: 44),
                LogoutButton(),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
