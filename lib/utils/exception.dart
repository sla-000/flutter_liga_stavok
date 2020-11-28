import 'package:flutter/widgets.dart';

abstract class AppException implements Exception {
  const AppException([this.message]);

  final String message;

  /// Get localized description if the error is a SeeWoundException or just
  /// return usual toString
  static String getMessage(BuildContext context, Object error) =>
      error is AppException
          ? error.toLocalizedString(context)
          : error.toString();

  /// Description of exception for user
  String toLocalizedString(BuildContext context);

  /// Description of exception for developer
  @override
  String toString() => 'AppException: ${message ?? 'No description'}';
}

/// Serious error, probably developer mistake
abstract class AppError extends AppException {
  const AppError([String message]) : super(message);

  @override
  String toString() => 'AppError{message: $message}';
}

/// Expected error, normal behavior
abstract class AppWarning extends AppException {
  const AppWarning([String message]) : super(message);

  @override
  String toString() => 'AppWarning{message: $message}';
}

/// Not an error, special state of stream or future
abstract class AppInfo extends AppException {
  const AppInfo([String message]) : super(message);

  @override
  String toString() => 'AppInfo{message: $message}';
}

/// App is busy doing something
abstract class AppBusy extends AppInfo {
  const AppBusy([String message]) : super(message);

  @override
  String toString() => 'AppBusy{message: $message}';
}
