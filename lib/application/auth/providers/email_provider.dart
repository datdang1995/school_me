import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:school_me/domain/auth/value_objects.dart';

part 'email_provider.g.dart';

@riverpod
class Email extends _$Email {
  @override
  EmailObject build() {
    return EmailObject('');
  }

  void onChanged(String value) {
    state = EmailObject(value);
  }

  String? validate(String? _) {
    return state.value.fold(
      (l) {
        return l.maybeWhen(
          orElse: () => null,
          empty: () => 'Email cannot be empty',
          invalidEmail: () => 'Invalid email',
        );
      },
      (r) => null,
    );
  }
}
