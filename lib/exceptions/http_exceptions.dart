class AppHttpException implements Exception {
  final String message;
  AppHttpException(this.message);

  @override
  String toString() => message;
}

class InvalidCredentialsException extends AppHttpException {
  InvalidCredentialsException() : super('Invalid account or password.');
}

class ServerErrorException extends AppHttpException {
  ServerErrorException() : super('Server error. Please try again later.');
}

class SessionExpiredException extends AppHttpException {
  SessionExpiredException() : super('Session has expired.');
}

class NetworkException extends AppHttpException {
  NetworkException()
    : super('Network error. Please check your internet connection.');
}

class UnknownHttpException extends AppHttpException {
  UnknownHttpException() : super('Unknown error.');
}
