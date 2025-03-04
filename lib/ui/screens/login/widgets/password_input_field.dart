import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pndlm_assessment/constants/colors.dart';
import 'package:pndlm_assessment/constants/text_styles.dart';

class PasswordInputField extends HookWidget {
  const PasswordInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final showPassword = useState(false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Password', style: TextStyleConstants.inputTitle),
        SizedBox(height: 8),
        TextFormField(
          obscureText: !showPassword.value,
          textInputAction: TextInputAction.done,
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
          onChanged: (value) {},
        ),
      ],
    );
  }
}
