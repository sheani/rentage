part of 'extensions.dart';

extension StringExtension on String {
  String upperize() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String lowerize() {
    return '${this[0].toLowerCase()}${substring(1)}';
  }
}