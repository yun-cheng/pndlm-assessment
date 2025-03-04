import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pndlm_assessment/constants/assets.dart';

class ClockLogo extends StatelessWidget {
  const ClockLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AssetConstants.clockLogo);
  }
}
