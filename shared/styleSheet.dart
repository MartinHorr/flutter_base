import 'package:flutter/material.dart';

class AppColor {
  // const Color(0xFF______); (hexCode format🤡)
  const AppColor();
  Color get primary => const Color(0xFFFDDA00);
  Color get black => const Color(0xFF000000);
  Color get white => const Color(0xFFFFFFFF);
  Color get darkGrey => const Color(0xFF222225);
  Color get darkOrange => const Color(0xFFFF4802);
  Color get lightOrange => const Color(0xFFFFAF01);
  Color get primaryText => const Color(0xFF000000);
  Color get decondaryText => const Color(0xFF6B6B6D);
  Color get tertiaryText => const Color(0xFFBBBBBB);
  Color get errorRed => const Color(0xFFFF0000);
  Color get errorDarkPink => const Color(0xFFEF2C4A);
  Color get divider => const Color(0xFFF7F7F9);
  Color get divider2 => const Color(0xFFE8E8E8);
  Color get editTextBorder => const Color(0xFFAAAAAA);
  Color get whiteBackgroundColor => const Color(0xFFFFFFFF);
  Color get grayBackgroundColor => const Color(0xFFF5F5F5);
  Color get searchBarColor => const Color(0xFFEDEDEF);
  Color get lightPinkColor => const Color(0xFFFFF4F3);
  Color get doneBlueColor => const Color(0xFF007AFE);
}

class StyleSheet {
  static AppColor color = const AppColor();
  static const String fontFamilyRoboto = "Roboto";

  static TextStyle font(
      RobotoFamily robotoFamily, double fontSize, Color color) {
    FontWeight robotoFontWeight = FontWeight.normal;
    switch (robotoFamily) {
      case RobotoFamily.robotoBlack:
        robotoFontWeight = FontWeight.w900;
        break;
      case RobotoFamily.robotoBold:
        robotoFontWeight = FontWeight.bold;
        break;
      case RobotoFamily.robotoItalic:
        robotoFontWeight = FontWeight.normal;
        return TextStyle(
            fontFamily: fontFamilyRoboto,
            fontWeight: robotoFontWeight,
            fontStyle: FontStyle.italic,
            fontSize: fontSize,
            color: color);
      case RobotoFamily.robotoLight:
        robotoFontWeight = FontWeight.w300;
        break;
      case RobotoFamily.robotoMedium:
        robotoFontWeight = FontWeight.w500;
        break;
      case RobotoFamily.robotoRegular:
        robotoFontWeight = FontWeight.normal;
        break;
      case RobotoFamily.robotoThin:
        robotoFontWeight = FontWeight.w100;
        break;
    }
    return TextStyle(
        fontFamily: fontFamilyRoboto,
        fontWeight: robotoFontWeight,
        fontSize: fontSize,
        color: color);
  }
}

enum RobotoFamily {
  robotoBlack,
  robotoBold,
  robotoItalic,
  robotoLight,
  robotoMedium,
  robotoRegular,
  robotoThin
}
