import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/entities/user_entity.dart';
import 'package:marketi/core/utlis/failure.dart';
import 'package:marketi/features/authentication/domain/usecases/forgot_password_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/log_in_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/log_in_with_token_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/log_out_usecase.dart';

part 'log_in_state.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit({
    required LogInUsecase logInUsecase,
    required LogInWithTokenUsecase logInWithTokenUsecase,
    required ForgotPasswordUsecase forgotPasswordUsecase,
    required LogOutUsecase logOutUsecase,
  })  : _logInUsecase = logInUsecase,
        // _forgotPasswordUsecase = forgotPasswordUsecase,
        // _logInWithTokenUsecase = logInWithTokenUsecase,
        _logOutUsecase = logOutUsecase,
        super(LogInInitial());

  UserEntity? user;
  final LogInUsecase _logInUsecase;
  // final LogInWithTokenUsecase _logInWithTokenUsecase;
  // final ForgotPasswordUsecase _forgotPasswordUsecase;
  final LogOutUsecase _logOutUsecase;

  Future<void> logIn({
    required String email,
    required String password,
  }) async {
    emit(LogInLoading());
    final Either<Failure, UserEntity> result = await _logInUsecase.call(
      email: email,
      password: password,
      rememberMe: true,
    );
    result.fold(
      (failure) => emit(LogInFailure(failure: failure)),
      (user) {
        this.user = user;
        emit(LogInSuccess(user: user));
      },
    );
  }

  Future<void> logOut() async {
    emit(LogInLoading());
    if (user == null) {
      emit(LogInFailure(failure: ServerFailure(errorMsg: 'User not logged in')));
    }
    Either<Failure, bool> data = await _logOutUsecase.call(accessToken: user!.accessToken);
    data.fold(
      (failure) => emit(LogInFailure(failure: failure)),
      (success) {
        if (success) {
          emit(LogOutSuccess());
        } else {
          emit(LogInFailure(failure: ServerFailure(errorMsg: 'Failed to log out')));
        }
      },
    );
    emit(LogOutSuccess());
  }
}
