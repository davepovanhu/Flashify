import 'dart:async';

import 'package:ankigpt/firebase_options_dev.dart' as dev;
import 'package:ankigpt/firebase_options_prod.dart' as prod;
import 'package:ankigpt/src/models/flavor.dart';
import 'package:ankigpt/src/pages/widgets/theme.dart';
import 'package:ankigpt/src/providers/flavor_provider.dart';
import 'package:ankigpt/src/providers/logger/logger_provider.dart';
import 'package:ankigpt/src/providers/logger/memory_output_provider.dart';
import 'package:ankigpt/src/providers/logger/provider_logger_observer.dart';
import 'package:ankigpt/src/providers/router_provider.dart';
import 'package:ankigpt/src/providers/shared_preferences_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:logger/logger.dart';

Future<void> main() async {
  usePathUrlStrategy();

  WidgetsFlutterBinding.ensureInitialized();

  // We need to create a provider container because at this point, we don't
  // have any widget or provider scope set. Therefore, we can only access
  // provider through the container.
  final container = ProviderContainer();

  final memoryOutput = container.read(memoryOutputProvider);
  final logger = container.read(loggerProvider);
  final flavor = _getFlavor(logger);

  FlutterError.onError = (details) {
    logger.e('FlutterError.onError', details.exception, details.stack);
  };

  await _initFirebase(flavor);

  runApp(ProviderScope(
    observers: [
      ProviderLoggerObserver(logger),
    ],
    overrides: [
      memoryOutputProvider.overrideWithValue(memoryOutput),
      loggerProvider.overrideWithValue(logger),
      flavorProvider.overrideWithValue(flavor),
    ],
    child: const AnkiGptApp(),
  ));
}

Flavor _getFlavor(Logger logger) {
  final flavor = Flavor.values
      .byName(const String.fromEnvironment('FLAVOR', defaultValue: 'prod'));
  logger.i('Flavor: ${flavor.name}');
  return flavor;
}

Future<FirebaseApp> _initFirebase(Flavor flavor) async {
  switch (flavor) {
    case Flavor.dev:
      return Firebase.initializeApp(
          options: dev.DefaultFirebaseOptions.currentPlatform);
    case Flavor.prod:
      return Firebase.initializeApp(
          options: prod.DefaultFirebaseOptions.currentPlatform);
  }
}

class AnkiGptApp extends ConsumerWidget {
  const AnkiGptApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Call shared preferences to initialize it.
    ref.read(sharedPreferencesAccesserProvider);

    return MaterialApp.router(
      title: 'AnkiGPT - Turn lecture slides into flashcards',
      theme: ankigptTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: ref.watch(routerProvider),
    );
  }
}
