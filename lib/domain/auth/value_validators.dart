import 'package:dartz/dartz.dart';
import 'package:school_me/domain/core/value_failure.dart';

class ValueValidators {
  static Either<ValueFailure<String>, String> email(String email) {
    if (email.isEmpty) return left(const ValueFailure.empty());
    final result = RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$",
    ).hasMatch(email);
    if (result) return right(email);
    return left(const ValueFailure.invalidEmail());
  }

  static Either<ValueFailure<String>, String> password(String password) {
    final result = RegExp(
      r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$",
    ).hasMatch(password);
    if (result) {
      return right(password);
    } else {
      return left(const ValueFailure.invalidPassword());
    }
  }
}
