import 'value_failure.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explaination =
        'Encountered a ValueFailure at an unrecoverable point. '
        'Terminating.';

    return Error.safeToString('$explaination Failure was: $valueFailure');
  }
}
