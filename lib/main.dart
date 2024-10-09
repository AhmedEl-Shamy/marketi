import 'package:flutter/material.dart';
import 'package:marketi/features/splash/presentation/pages/splash_screen.dart';

void main() {
  runApp(const Marketi());
}

class Marketi extends StatelessWidget {
  const Marketi({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marketi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
