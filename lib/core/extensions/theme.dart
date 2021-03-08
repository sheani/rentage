part of 'extensions.dart';

/// Темы
extension ThemeContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  CustomTheme get customTheme => ThemeProvider.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  TextTheme get accentTextTheme => Theme.of(this).accentTextTheme;
}