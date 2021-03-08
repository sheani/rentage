import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Map<T, List<R>> copyMap<T, R>(Map<T, List<R>> map) {
  final Map<T, List<R>> newMap = <T, List<R>>{};
  map.forEach((T key, List<R> value) {
    newMap[key] = List<R>.of(value);
  });
  return newMap;
}

String dateFormat(int millisecondsSinceEpoch) =>
    DateFormat('dd / MM / y', 'en-US')
        .format(DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch));

String dateTimeFormat(int millisecondsSinceEpoch) =>
    DateFormat('MMM dd, y, HH:mm', 'en-US')
        .format(DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch));

MaterialPageRoute<Widget> defaultRoute(Widget view) =>
    MaterialPageRoute<Widget>(builder: (BuildContext context) => view);

/// null параметр для copyWith
class Nullable<T> {
  Nullable(this._value);

  final T _value;

  T get value {
    return _value;
  }
}