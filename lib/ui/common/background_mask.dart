import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pndlm_assessment/constants/assets.dart';

class BackgroundMask extends StatelessWidget {
  const BackgroundMask({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AssetConstants.backgroundMask, fit: BoxFit.cover);
  }
}
