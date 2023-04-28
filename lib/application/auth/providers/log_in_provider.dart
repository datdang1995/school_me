import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:school_me/application/auth/providers/email_provider.dart';
import 'package:school_me/application/auth/providers/password_provider.dart';
import 'package:school_me/infrastructure/auth/log_in_request.dart';

part 'log_in_provider.g.dart';

@riverpod
LogInRequest logIn(LogInRef ref) {
  return LogInRequest(
    email: ref.watch(emailProvider).value.fold((l) => null, (r) => r),
    password: ref.watch(passwordProvider).value.fold((l) => null, (r) => r),
  );
}
