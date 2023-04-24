import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';

class AppConfigs {
  const AppConfigs._();

  static Future<void> config() async {
    runZonedGuarded<Future<void>>(() async {
      WidgetsFlutterBinding.ensureInitialized();

      _buildFimberTree();

      await _buildSystemUIOptions();

      runApp(
        const ProviderScope(
          child: MyApp(),
        ),
      );
    }, (error, stackTrace) {
      Fimber.e('Error in main thread appeared. 😥',
          ex: error, stacktrace: stackTrace);
    });
  }

  static void _buildFimberTree() {
    if (kDebugMode) {
      Fimber.plantTree(DebugTree());
    }
  }

  static Future<void> _buildSystemUIOptions() async {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
