part of 'extensions.dart';

extension LocalizationContextExtension on BuildContext {
  BaseLocale get loc {
    return Locals.lastLocale = Localizations.of<Locals>(this, Locals).current;
  }
}