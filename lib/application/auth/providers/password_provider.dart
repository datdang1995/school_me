import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:school_me/domain/auth/value_objects.dart';

part 'password_provider.g.dart';

@riverpod
class Password extends _$Password {
  @override
  PasswordObject build() {
    return PasswordObject('');
  }

  void onChanged(String value) {
    state = PasswordObject(value);
  }

  String? validate(String? _) {
    return state.value.fold(
      (l) {
        return l.maybeWhen(
          orElse: () => null,
          invalidPassword: () => 'Invalid password',
        );
      },
      (r) => null,
    );
  }
}
