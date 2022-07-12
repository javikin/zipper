import 'package:flutter/material.dart';

class Texts {
  static const h1 = TextStyle(
    backgroundColor: Colors.transparent,
    fontSize: TextSizes.h1,
    fontWeight: FontWeight.w600,
  );

  static const p1 = TextStyle(
    backgroundColor: Colors.transparent,
    fontSize: TextSizes.p1,
    fontWeight: FontWeight.normal,
  );

  static const p2 = TextStyle(
    backgroundColor: Colors.transparent,
    fontSize: TextSizes.p2,
    fontWeight: FontWeight.w500,
  );

  static const button = TextStyle(
    backgroundColor: Colors.transparent,
    fontSize: TextSizes.button,
    fontWeight: FontWeight.bold,
  );
}

class TextSizes {
  static const double h1 = 20;
  static const double p1 = 18;
  static const double p2 = 16;
  static const double button = 16;
}
