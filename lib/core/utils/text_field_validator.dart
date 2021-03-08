import 'package:flutter/material.dart';

typedef ValidationCallback = void Function(bool);
typedef TypedValidationCallback = void Function(TextFieldValidator, bool);

abstract class TextFieldValidator {
  TextFieldValidator(this.errorText, {this.onValidate})
      : assert(errorText != null);

  final ValueNotifier<String> errorText;

  bool isValid(String text);

  ValidationCallback onValidate;
}

class MultiValidator extends TextFieldValidator {
  MultiValidator(this.validators,
      {ValidationCallback onValidate, this.onTypedValidate})
      : super(ValueNotifier<String>(''), onValidate: onValidate);

  final List<TextFieldValidator> validators;
  final TypedValidationCallback onTypedValidate;

  @override
  bool isValid(String text) {
    for (int i = 0; i < validators.length; i++) {
      if (!validators[i].isValid(text)) {
        super.errorText.value = validators[i].errorText.value;
        super.onValidate?.call(false);
        onTypedValidate?.call(validators[i], false);
        return false;
      }
    }
    super.onValidate?.call(true);
    onTypedValidate?.call(null, true);
    return true;
  }
}

class WrongFieldValidator extends TextFieldValidator {
  WrongFieldValidator({
    String errorText = '',
    this.isWrong = false,
    ValidationCallback onValidate,
  }) : super(ValueNotifier<String>(errorText), onValidate: onValidate);

  final bool isWrong;

  @override
  bool isValid(String text) {
    final bool _valid = !isWrong;
    super.onValidate?.call(_valid);
    return _valid;
  }
}

class ZeroLengthValidator extends TextFieldValidator {
  ZeroLengthValidator(
      String errorText, {
        ValidationCallback onValidate,
      }) : super(ValueNotifier<String>(errorText), onValidate: onValidate);

  @override
  bool isValid(String text) {
    final bool _valid = text?.isNotEmpty == true;
    super.onValidate?.call(_valid);
    return _valid;
  }
}

class MinLengthValidator extends TextFieldValidator {
  MinLengthValidator(
      this.min,
      String errorText, {
        ValidationCallback onValidate,
      }) : super(ValueNotifier<String>(errorText), onValidate: onValidate);

  final int min;

  @override
  bool isValid(String text) {
    final bool _valid = text.length >= min;
    super.onValidate?.call(_valid);
    return _valid;
  }
}

class MaxLengthValidator extends TextFieldValidator {
  MaxLengthValidator(this.max, String errorText,
      {ValidationCallback onValidate})
      : super(ValueNotifier<String>(errorText), onValidate: onValidate);

  final int max;

  @override
  bool isValid(String text) {
    final bool _valid = text.length <= max;
    super.onValidate?.call(_valid);
    return _valid;
  }
}