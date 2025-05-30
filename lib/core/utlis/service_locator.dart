import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:marketi/core/services/api_service.dart';
import 'package:marketi/core/services/secure_storage_service.dart';
import 'package:marketi/core/utlis/app_constants.dart';
import 'package:marketi/features/authentication/data/data_sources/auth_local_data_source.dart';
import 'package:marketi/features/authentication/data/data_sources/auth_remote_data_source.dart';
import 'package:marketi/features/authentication/data/repositories/auth_repo_impl.dart';
import 'package:marketi/features/authentication/domain/repositories/auth_repo.dart';
import 'package:marketi/features/authentication/domain/usecases/change_password_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/verify_otp_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/forgot_password_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/log_in_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/log_in_with_token_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/log_out_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/register_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/reset_pass_usecase.dart';
import 'package:marketi/features/authentication/presentation/controllers/account_preferences_cubit/account_preferences_cubit.dart';
import 'package:marketi/features/authentication/presentation/controllers/log_in_cubit/log_in_cubit.dart';
import 'package:marketi/features/authentication/presentation/controllers/register_cubit/register_cubit.dart';
import 'package:marketi/features/authentication/presentation/controllers/reset_pass_cubit/reset_pass_cubit.dart';
import 'package:marketi/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:marketi/features/home/domain/usecases/fetch_best_products_usecase.dart';
import 'package:marketi/features/home/domain/usecases/fetch_popular_products_usecase.dart';

import '../../features/authentication/domain/usecases/update_user_data_usecase.dart';
import '../../features/authentication/presentation/controllers/forgot_pass_cubit/forgot_pass_cubit.dart';
import '../../features/home/data/repositories/home_repo_impl.dart';
import '../../features/home/domain/repositories/home_repo.dart';
import '../../features/home/domain/usecases/fetch_buy_again.dart';
import '../../features/home/presentation/controllers/best_for_you/best_for_you_cubit.dart';
import '../../features/home/presentation/controllers/buy_agin_cubit/buy_again_cubit.dart';
import '../../features/home/presentation/controllers/popular_products_cubit/popular_products_cubit.dart';

final GetIt sl = GetIt.I;

void setupLoactor({required String baseUrl, required String apiKey}) {
  // services
  sl.registerSingleton<Dio>(Dio());
  sl.registerSingleton<APIService>(
    ApiServiceImpl(
      dio: sl.get<Dio>(),
    ),
  );
  sl.registerSingleton<FlutterSecureStorage>(
    FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
      iOptions: IOSOptions(
        accessibility: KeychainAccessibility.first_unlock,
      ),
    ),
  );

  sl.registerSingleton<SecureStorageService>(
    SecureStorageServiceImpl(
      storage: sl.get<FlutterSecureStorage>(),
    ),
  );

  // data sources
  sl.registerSingleton<AuthLocalDataSource>(
    AuthLocalDataSourceImpl(storage: sl.get<SecureStorageService>()),
  );
  sl.registerSingleton<AuthRemoteDataSource>(
    AuthRemoteDataSourceImpl(
      apiService: sl.get<APIService>(),
      baseUrl: baseUrl,
      apiKey: apiKey,
    ),
  );
  sl.registerSingleton<HomeRemoteDataSource>(HomeRemoteDataSourceImpl(
    apiService: sl.get<APIService>(),
    baseUrl: AppConstants.kProductsBaseURL,
  ));

  // repos
  sl.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      localDataSource: sl.get<AuthLocalDataSource>(),
      remoteDataSource: sl.get<AuthRemoteDataSource>(),
    ),
  );
  sl.registerSingleton<HomeRepo>(
    HomeRepoImpl(
      homeRemoteDataSource: sl.get<HomeRemoteDataSource>(),
    ),
  );

  // usecases
  sl.registerSingleton<RegisterUsecase>(
    RegisterUsecase(authRepo: sl.get<AuthRepo>()),
  );
  sl.registerSingleton<LogInUsecase>(
    LogInUsecase(authRepo: sl.get<AuthRepo>()),
  );
  sl.registerSingleton<LogOutUsecase>(
    LogOutUsecase(authRepo: sl.get<AuthRepo>()),
  );
  sl.registerSingleton<VerifyOTPUsecase>(
    VerifyOTPUsecase(authRepo: sl.get<AuthRepo>()),
  );
  sl.registerSingleton<ForgotPasswordUsecase>(
    ForgotPasswordUsecase(authRepo: sl.get<AuthRepo>()),
  );
  sl.registerSingleton<LogInWithTokenUsecase>(
    LogInWithTokenUsecase(authRepo: sl.get<AuthRepo>()),
  );
  sl.registerSingleton<ResetPassUsecase>(
    ResetPassUsecase(authRepo: sl.get<AuthRepo>()),
  );
  sl.registerSingleton<ChangePasswordUsecase>(
    ChangePasswordUsecase(authRepo: sl.get<AuthRepo>()),
  );
  sl.registerSingleton<UpdateUserDataUsecase>(
    UpdateUserDataUsecase(authRepo: sl.get<AuthRepo>()),
  );
  sl.registerSingleton<FetchBuyAgainUsecase>(
    FetchBuyAgainUsecase(homeRepo: sl.get<HomeRepo>()),
  );
  sl.registerSingleton<FetchPopularProductsUsecase>(
    FetchPopularProductsUsecase(homeRepo: sl.get<HomeRepo>()),
  );
  sl.registerSingleton<FetchBestProductsUsecase>(
    FetchBestProductsUsecase(homeRepo: sl.get<HomeRepo>()),
  );

  // cubits
  sl.registerSingleton<LogInCubit>(
    LogInCubit(
      logInUsecase: sl.get<LogInUsecase>(),
      logInWithTokenUsecase: sl.get<LogInWithTokenUsecase>(),
      logOutUsecase: sl.get<LogOutUsecase>(),
      verifyOTPUsecase: sl.get<VerifyOTPUsecase>(),
    ),
  );
  sl.registerFactory<RegisterCubit>(
    () => RegisterCubit(
      registerUsecase: sl.get<RegisterUsecase>(),
    ),
  );
  sl.registerFactory<ForgotPassCubit>(
    () => ForgotPassCubit(
      sl.get<ForgotPasswordUsecase>(),
    ),
  );
  sl.registerFactory<ResetPassCubit>(
    () => ResetPassCubit(
      resetPassUsecase: sl.get<ResetPassUsecase>(),
      changePasswordUsecase: sl.get<ChangePasswordUsecase>(),
    ),
  );
  sl.registerFactory<AccountPreferencesCubit>(
    () => AccountPreferencesCubit(
      updateUserDataUsecase: sl.get<UpdateUserDataUsecase>(),
    ),
  );
  sl.registerFactory<BestForYouCubit>(
    () => BestForYouCubit(
      fetchBestProductsUsecase: sl.get<FetchBestProductsUsecase>(),
    ),
  );
  sl.registerFactory<BuyAgainCubit>(
    () => BuyAgainCubit(
      fetchBuyAgainUsecase: sl.get<FetchBuyAgainUsecase>(),
    ),
  );
  sl.registerFactory<PopularProductsCubit>(
    () => PopularProductsCubit(
      fetchPopularProductsUsecase: sl.get<FetchPopularProductsUsecase>(),
    ),
  );
}
