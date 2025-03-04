import 'package:flutter/material.dart';

class FontFamilyConstants {
  static const figtree = 'figtree';
}

class TextStyleConstants {
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
}
