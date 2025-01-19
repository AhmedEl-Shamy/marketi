import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/entities/user_entity.dart';
import 'package:marketi/core/utlis/failure.dart';
import 'package:marketi/features/authentication/domain/usecases/confirm_email_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/forgot_password_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/log_in_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/log_in_with_token_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/log_out_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/register_usecase.dart';

part 'auth_cubit_state.dart';

class AuthCubit extends Cubit<AuthCubitState> {
  AuthCubit({
    required LogInUsecase logInUsecase,
    required LogInWithTokenUsecase logInWithTokenUsecase,
    required RegisterUsecase registerUsecase,
    required ForgotPasswordUsecase forgotPasswordUsecase,
    required ConfirmEmailUsecase confirmEmailUsecase,
    required LogOutUsecase logOutUsecase,
  })  : _logInUsecase = logInUsecase,
        _confirmEmailUsecase = confirmEmailUsecase,
        _forgotPasswordUsecase = forgotPasswordUsecase,
        _logInWithTokenUsecase = logInWithTokenUsecase,
        _logOutUsecase = logOutUsecase,
        _registerUsecase = registerUsecase,
        super(AuthCubitInitial());

  UserEntity? user;
  final LogInUsecase _logInUsecase;
  final LogInWithTokenUsecase _logInWithTokenUsecase;
  final RegisterUsecase _registerUsecase;
  final ForgotPasswordUsecase _forgotPasswordUsecase;
  final ConfirmEmailUsecase _confirmEmailUsecase;
  final LogOutUsecase _logOutUsecase;

  Future<void> register({
    required String email,
    required String password,
    required String name,
    required String username,
  }) async {
    emit(AuthCubitLoading());
    final Either<Failure, void> result = await _registerUsecase.call(
      email: email,
      password: password,
    );
    result.fold(
      (failure) => emit(AuthCubitFailure(failure: failure)),
      (val) => emit(AuthCubitRegisterSuccess()),
    );
  }

  Future<void> logIn({
    required String email,
    required String password,
  }) async {
    emit(AuthCubitLoading());
    final Either<Failure, UserEntity> result = await _logInUsecase.call(
      email: email,
      password: password,
      rememberMe: true,
    );
    result.fold(
      (failure) => emit(AuthCubitFailure(failure: failure)),
      (user) {
        this.user = user;
        emit(AuthCubitLogInSuccess(user: user));
      },
    );
  }

  Future<void> logOut() async {
    emit(AuthCubitLoading());
    await _logOutUsecase.call();
    emit(AuthCubitLogOutSuccess());
  }
}
