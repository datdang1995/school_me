import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:school_me/application/app_router/provider/app_router_provider.dart';
import 'package:school_me/application/appwrite/provider/appwrite_provider.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(appRouterProvider);

    useEffect(() {
      final client = ref.read(appwriteClientProvider);
      client
              .setEndpoint('https://localhost/v1') // Your Appwrite Endpoint
              .setProject('644732c2d0c36b537e5a') // Your project ID
              .setSelfSigned() // Use only on dev mode with a self-signed SSL cert
          ;
      return null;
    }, []);

    return MaterialApp.router(
      title: 'School Me',
      debugShowCheckedModeBanner: false,
      routerConfig: router.config(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('vi'),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
    );
  }
}
