import 'package:dailyvita_state_flut/routers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'daily vita',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Colors.greenAccent.shade100),
        useMaterial3: true,
      ),
      routerConfig: appRouter,
    );
  }
}
