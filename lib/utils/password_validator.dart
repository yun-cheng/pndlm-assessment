enum PasswordValidationError { invalid, empty }

extension PasswordValidationErrorText on PasswordValidationError {
  String text() {
    switch (this) {
      case PasswordValidationError.invalid:
        return 'Password must be at least 8 characters';
      case PasswordValidationError.empty:
        return 'This field cannot be empty';
    }
  }
}

final _passwordRegExp = RegExp(r'^[^\s]{8,}$');

PasswordValidationError? passwordValidator(String value) {
  if (value.isEmpty) {
    return PasswordValidationError.empty;
  } else if (!_passwordRegExp.hasMatch(value)) {
    return PasswordValidationError.invalid;
  }
  return null;
}
