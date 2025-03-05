import 'package:flutter/material.dart';
import 'package:pndlm_assessment/ui/common/background_mask_container.dart';

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
            child: Center(child: LogoutButton()),
          ),
        ),
      ),
    );
  }
}
