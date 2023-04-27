import 'package:school_me/domain/auth/value_validators.dart';
import 'package:school_me/domain/core/value_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:school_me/domain/core/value_object.dart';

class Email extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const Email._(this.value);

  factory Email(String email) {
    return Email._(ValueValidators.email(email));
  }
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const Password._(this.value);

  factory Password(String password) {
    return Password._(ValueValidators.password(password));
  }
}
