import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:marketi/core/utlis/app_colors.dart';
import 'package:marketi/core/utlis/app_router_config.dart';
import 'package:marketi/core/utlis/service_locator.dart';
import 'package:marketi/features/authentication/presentation/controllers/log_in_cubit/log_in_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  setupLoactor(
    baseUrl: dotenv.env['BASE_URL']!,
    apiKey: dotenv.env['API_KEY']!,
  );
  runApp(const Marketi());
}

class Marketi extends StatelessWidget {
  const Marketi({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl.get<LogInCubit>(),
      child: MaterialApp.router(
        title: 'Marketi',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.kDarkLightBlue100,
          ),
          useMaterial3: true,
        ),
        routerConfig: AppRouterConfig.routerConfig,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
