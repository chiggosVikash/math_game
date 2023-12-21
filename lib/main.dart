import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:math_game/config/route/screen_route.dart';

void main() {
  runApp(const ProviderScope(child: MyApp(),));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenRoute = ScreenRoute();
    return MaterialApp(
      onGenerateRoute: screenRoute.onGenerateRoute,
      title: 'Math Game',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
