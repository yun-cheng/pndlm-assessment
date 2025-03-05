import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pndlm_assessment/constants/text_styles.dart';

class CheckboxButton extends HookWidget {
  final String label;
  final ValueChanged<bool>? onChanged;

  const CheckboxButton(this.label, {super.key, this.onChanged});

  @override
  Widget build(BuildContext context) {
    final isChecked = useState(false);

    return InkWell(
      onTap: () {
        final newValue = !isChecked.value;
        isChecked.value = newValue;
        onChanged?.call(newValue);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20,
              width: 20,
              child: Transform.scale(
                scale: 20 / 18,
                child: SizedBox(
                  width: 18,
                  height: 18,
                  child: Checkbox(value: isChecked.value, onChanged: null),
                ),
              ),
            ),
            SizedBox(width: 16),
            Padding(
              padding: const EdgeInsets.only(top: 1),
              child: Text(label, style: TextStyleConstants.checkbox),
            ),
          ],
        ),
      ),
    );
  }
}
