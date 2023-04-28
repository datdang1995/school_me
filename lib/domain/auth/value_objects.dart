import 'package:school_me/domain/auth/value_validators.dart';
import 'package:school_me/domain/core/value_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:school_me/domain/core/value_object.dart';

class EmailObject extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const EmailObject._(this.value);

  factory EmailObject(String email) {
    return EmailObject._(ValueValidators.email(email));
  }
}

class PasswordObject extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const PasswordObject._(this.value);

  factory PasswordObject(String password) {
    return PasswordObject._(ValueValidators.password(password));
  }
}
