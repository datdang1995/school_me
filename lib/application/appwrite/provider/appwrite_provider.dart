import 'package:appwrite/appwrite.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'appwrite_provider.g.dart';

@riverpod
Client appwriteClient(AppwriteClientRef ref) {
  return Client();
}
