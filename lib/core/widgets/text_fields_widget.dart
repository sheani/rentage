
import 'package:flutter/material.dart';

InputDecoration setAppFormDecorationWithLabel(String labelText) {

  var lineAppColor = Colors.green;

  return InputDecoration(
    contentPadding: EdgeInsets.only(
      top: 12.0,
      bottom: 12.0,
    ),
    isDense: true,
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: lineAppColor,
        width: 2.0,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: lineAppColor,
        width: 2.0,
      ),
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(
        color: lineAppColor,
        width: 2.0,
      ),
    ),
    labelStyle: TextStyle(
      color: Colors.white,
      fontSize: 16.0,
    ),
    hasFloatingPlaceholder: true,
    labelText: labelText,
  );
}