import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:marketi/core/utlis/app_colors.dart';
import 'package:marketi/core/utlis/app_router_config.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await Supabase.initialize(
    url: dotenv.env['API_URL'] ?? '',
    anonKey: dotenv.env['API_KEY'] ?? '',
  );
  runApp(const Marketi());
}

class Marketi extends StatelessWidget {
  const Marketi({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Marketi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.kDarkLightBlue100,
        ),
        useMaterial3: true,
      ),
      routerConfig: AppRouterConfig.routerConfig,
      debugShowCheckedModeBanner: false,
    );
  }
}
