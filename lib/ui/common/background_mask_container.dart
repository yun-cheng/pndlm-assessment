import 'package:flutter/widgets.dart';
import 'package:pndlm_assessment/ui/common/background_mask.dart';

class BackgroundMaskContainer extends StatelessWidget {
  final Widget child;

  const BackgroundMaskContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(child: BackgroundMask()),
        SafeArea(child: child),
      ],
    );
  }
}
