import 'package:appwrite/appwrite.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'appwrite_provider.g.dart';

@riverpod
Client appwriteClient(AppwriteClientRef ref) {
  final client = Client();
  client
          .setEndpoint('https://localhost/v1') // Your Appwrite Endpoint
          .setProject('644732c2d0c36b537e5a') // Your project ID
          .setSelfSigned() // Use only on dev mode with a self-signed SSL cert
      ;
  return client;
}
