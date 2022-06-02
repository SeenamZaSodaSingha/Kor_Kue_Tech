//palette.dart
import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor primary = MaterialColor(
    0xffd18636, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffbc7931), //10%
      100: Color(0xffa76b2b), //20%
      200: Color(0xff925e26), //30%
      300: Color(0xff7d5020), //40%
      400: Color(0xff69431b), //50%
      500: Color(0xff543616), //60%
      600: Color(0xff3f2810), //70%
      700: Color(0xff2a1b0b), //80%
      800: Color(0xff150d05), //90%
      900: Color(0xff000000), //100%
    },
  );
}
