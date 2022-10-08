import 'package:coba_riverpod/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(ProviderBase provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    final infoProvider = {
      "provider": provider.name ?? provider.runtimeType,
      "oldValue": previousValue,
      "newValue": newValue
    };
    debugPrint(infoProvider.toString());
    super.didUpdateProvider(provider, previousValue, newValue, container);
  }
}

void main() {
  runApp(
    ProviderScope(
      observers: [Logger()],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.red,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
