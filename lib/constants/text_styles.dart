import 'package:flutter/material.dart';

import 'colors.dart';

class FontFamilyConstants {
  static const figtree = 'figtree';
}

class TextStyleConstants {
  static const body = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.5,
    letterSpacing: 0,
    color: Colors.white,
  );

  static const inputTitle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 10 / 14,
    letterSpacing: 0,
    color: Colors.white,
  );

  static const link = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    height: 1.5,
    letterSpacing: 0,
    color: Colors.white,
    decoration: TextDecoration.underline,
    decorationColor: Colors.white,
  );

  static const checkbox = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 11 / 16,
    letterSpacing: 0,
    color: Colors.white,
  );

  static const button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 11 / 16,
    letterSpacing: 0,
    color: Colors.white,
  );

  static const clock = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 10 / 14,
    letterSpacing: 0,
    color: ColorConstants.softBlueDk,
  );
}
