import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:marketi/core/services/secure_storage_service.dart';
import 'package:marketi/features/authentication/data/data_sources/auth_local_data_source.dart';
import 'package:marketi/features/authentication/data/data_sources/auth_remote_data_source.dart';
import 'package:marketi/features/authentication/data/repositories/auth_repo_impl.dart';
import 'package:marketi/features/authentication/domain/repositories/auth_repo.dart';
import 'package:marketi/features/authentication/domain/usecases/confirm_email_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/forgot_password_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/log_in_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/log_in_with_token_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/log_out_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/register_usecase.dart';
import 'package:marketi/features/authentication/presentation/controllers/auth_cubit_cubit.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final GetIt sl = GetIt.I;

void setupLoactor() {
  // services
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
    AuthRemoteDataSourceImpl(client: Supabase.instance.client),
  );

  // repos
  sl.registerSingleton<AuthRepo>(
    AuthRepoImpl(
      client: Supabase.instance.client,
      localDataSource: sl.get<AuthLocalDataSource>(),
      remoteDataSource: sl.get<AuthRemoteDataSource>(),
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
  sl.registerSingleton<ConfirmEmailUsecase>(
    ConfirmEmailUsecase(authRepo: sl.get<AuthRepo>()),
  );
  sl.registerSingleton<ForgotPasswordUsecase>(
    ForgotPasswordUsecase(authRepo: sl.get<AuthRepo>()),
  );
  sl.registerSingleton<LogInWithTokenUsecase>(
    LogInWithTokenUsecase(authRepo: sl.get<AuthRepo>()),
  );

  // cubits
  sl.registerSingleton<AuthCubit>(
    AuthCubit(
      logInUsecase: sl.get<LogInUsecase>(),
      logInWithTokenUsecase: sl.get<LogInWithTokenUsecase>(),
      registerUsecase: sl.get<RegisterUsecase>(),
      forgotPasswordUsecase: sl.get<ForgotPasswordUsecase>(),
      confirmEmailUsecase: sl.get<ConfirmEmailUsecase>(),
      logOutUsecase: sl.get<LogOutUsecase>(),
    ),
  );
}
