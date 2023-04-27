import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:school_me/domain/auth/value_objects.dart';
import 'package:school_me/infrastructure/auth/log_in_request.dart';

part 'log_in_provider.g.dart';

@riverpod
class LogInProvider extends _$LogInProvider {
  @override
  LogInRequest build() {
    return const LogInRequest();
  }

  void emailChanged(String email) {
    final value = Email(email);
    state = state.copyWith(email: value.isValid ? value.getOrCrash() : null);
  }

  void passwordChanged(String password) {
    final value = Password(password);
    state = state.copyWith(password: value.isValid ? value.getOrCrash() : null);
  }
}
