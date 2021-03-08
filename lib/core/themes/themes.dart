import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide Theme, ThemeMode;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

part 'colors.dart';

class Themes {
  static CustomTheme get lightAdditional => CustomTheme(
        white: _CColors.white,
        appColor: _CColors.appColor,
        neutralColor: _CColors.neutralColor,
        negativeColor: _CColors.negativeColor,
        positiveColor: _CColors.positiveColor,
        yellow: _CColors.yellow,
        greyLight: _CColors.greyLight,
        greyDark: _CColors.greyDark,
        grey: _CColors.grey,
        textS22W900: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w900,
        ),
        textS42W800: TextStyle(
          fontSize: 42,
          fontWeight: FontWeight.w800,
        ),
        textS24Bold: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        textS22W800: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w800,
        ),
        textS20W600: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        textS18W800: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
        textS18W400: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        textS16W700: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        textS16W600: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        textS16W400: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        textS16Bold: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        textS16Normal: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        textS14W600: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        textS14W500: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        textS14W400: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        textS14Normal: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        textS13W700: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w700,
        ),
        textS13W400: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
        textS12W700: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
        textS12W600: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        textS12W400: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        textS11W400: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w400,
        ),
        fontFamily: TextStyle().fontFamily,
      );

  static ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        primaryColor: _CColors.yellow,
        accentColor: _CColors.grey,
        textTheme: const TextTheme(),
      );

  static CustomTheme get darkExtra => lightAdditional;

  static ThemeData get darkTheme => lightTheme;

  static CustomTheme getTheme(Brightness brightness) {
    return brightness == Brightness.dark ? darkExtra : lightAdditional;
  }
}

class CustomTheme {
  CustomTheme({
    this.white,
    this.appColor,
    this.neutralColor,
    this.positiveColor,
    this.negativeColor,
    this.yellow,
    this.grey,
    this.greyDark,
    this.greyLight,
    this.textS42W800,
    this.textS24Bold,
    this.textS22W800,
    this.textS20W600,
    this.textS18W800,
    this.textS18W400,
    this.textS16W700,
    this.textS16W600,
    this.textS16W400,
    this.textS16Bold,
    this.textS16Normal,
    this.textS14W600,
    this.textS14W400,
    this.textS14Normal,
    this.textS13W700,
    this.textS13W400,
    this.textS12W700,
    this.textS12W600,
    this.textS12W400,
    this.textS11W400,
    this.textS14W500,
    this.textS22W900,
    this.fontFamily,
  });

  final Color white;
  final Color appColor;
  final Color neutralColor;
  final Color positiveColor;
  final Color negativeColor;
  final Color yellow;
  final Color greyDark;
  final Color greyLight;
  final Color grey;
  final TextStyle textS42W800;
  final TextStyle textS24Bold;
  final TextStyle textS22W800;
  final TextStyle textS20W600;
  final TextStyle textS18W800;
  final TextStyle textS18W400;
  final TextStyle textS16W700;
  final TextStyle textS16W600;
  final TextStyle textS16Bold;
  final TextStyle textS16Normal;
  final TextStyle textS16W400;
  final TextStyle textS14W600;
  final TextStyle textS14W400;
  final TextStyle textS14Normal;
  final TextStyle textS13W700;
  final TextStyle textS13W400;
  final TextStyle textS12W700;
  final TextStyle textS12W600;
  final TextStyle textS12W400;
  final TextStyle textS11W400;
  final TextStyle textS14W500;
  final TextStyle textS22W900;
  final String fontFamily;
}
