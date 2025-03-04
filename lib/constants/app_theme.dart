import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData appTheme(BuildContext context) {
  return ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorConstants.clynkGreen,
      brightness: Brightness.light,
    ),
  ).copyWith(scaffoldBackgroundColor: ColorConstants.clynkGreen);
}
