import 'package:flutter/material.dart';

import 'colors.dart';
import 'text_styles.dart';

ThemeData appTheme(BuildContext context) {
  return ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorConstants.clynkGreen,
      brightness: Brightness.light,
    ),
  ).copyWith(
    scaffoldBackgroundColor: ColorConstants.clynkGreen,
    textTheme: ThemeData.light().textTheme.apply(
      fontFamily: FontFamilyConstants.figtree,
    ),
    splashFactory: NoSplash.splashFactory,
    checkboxTheme: CheckboxThemeData(
      side: BorderSide(color: Colors.white, width: 0),
      fillColor: WidgetStateProperty.all(Colors.white),
      checkColor: WidgetStateProperty.all(ColorConstants.checkGreen),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(7),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      errorMaxLines: 2,
      helperMaxLines: 2,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: ColorConstants.clynkGreen),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: ColorConstants.clynkGreen),
      ),
    ),
  );
}
