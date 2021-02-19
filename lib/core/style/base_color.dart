


import 'package:flutter/material.dart';

const blueColor  = Color(0xff349dd8);

const purpleColor  = Color(0xff844685);

const grayColor = Color(0xffF1F1F1);

const darkGrayColor = Color(0xff707070);

const blackColor  = Color(0xff000000);

const whiteColor  = Color(0xffFFFFFF);
const color="#FAA613";
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;

    }
    return int.tryParse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

