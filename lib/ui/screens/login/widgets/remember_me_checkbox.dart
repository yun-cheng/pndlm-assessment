import 'package:flutter/material.dart';
import 'package:pndlm_assessment/ui/common/checkbox_button.dart';

class RememberMeCheckbox extends StatelessWidget {
  const RememberMeCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    return CheckboxButton('Remember me for 30 days', onChanged: (value) {});
  }
}
