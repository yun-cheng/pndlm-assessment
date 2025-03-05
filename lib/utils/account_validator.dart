import 'package:email_validator/email_validator.dart';

enum AccountValidationError { invalid, empty }

extension AccountValidationErrorText on AccountValidationError {
  String text() {
    switch (this) {
      case AccountValidationError.invalid:
        return 'Please enter a valid email, phone, or username';
      case AccountValidationError.empty:
        return 'This field cannot be empty';
    }
  }
}

final _phoneRegExp = RegExp(r'^\+?\d{7,15}$');
final _usernameRegExp = RegExp(r'^\w{3,}$');

AccountValidationError? accountValidator(String value) {
  if (value.isEmpty) {
    return AccountValidationError.empty;
  } else if (!EmailValidator.validate(value) &&
      !_phoneRegExp.hasMatch(value) &&
      !_usernameRegExp.hasMatch(value)) {
    return AccountValidationError.invalid;
  }
  return null;
}
