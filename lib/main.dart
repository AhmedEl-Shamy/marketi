import 'package:flutter/material.dart';
import 'package:marketi/core/utlis/app_colors.dart';
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
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.kDarkLightBlue100,
        ),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
