import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:school_me/domain/auth/value_objects.dart';

final emailProvider = Provider<Email>((ref) {
  return Email('');
});
