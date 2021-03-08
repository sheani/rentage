import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rentage/core/localization/locale_base.dart';
import 'package:rentage/core/localization/localization.dart';
import 'dart:ui';

import 'package:rentage/core/themes/themes.dart';
import 'package:rentage/core/widgets/theme.dart';

part 'localization.dart';
part 'string.dart';
part 'theme.dart';

extension ObjectContextExtension on Object {
  T cast<T>() => this as T;
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final StringBuffer buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
