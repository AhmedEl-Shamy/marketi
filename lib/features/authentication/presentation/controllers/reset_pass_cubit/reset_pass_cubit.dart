import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/utlis/failure.dart';
import 'package:marketi/features/authentication/domain/usecases/change_password_usecase.dart';
import 'package:marketi/features/authentication/domain/usecases/reset_pass_usecase.dart';

part 'reset_pass_state.dart';

class ResetPassCubit extends Cubit<ResetPassState> {
  ResetPassCubit({
    required this.resetPassUsecase,
    required this.changePasswordUsecase,
  }) : super(ResetPassInitial());

  final ResetPassUsecase resetPassUsecase;
  final ChangePasswordUsecase changePasswordUsecase;

  Future<void> resetPassword({
    required String accessToken,
    required String newPass,
  }) async {
    emit(ResetPassLoading());
    final result = await resetPassUsecase(
      accessToken: accessToken,
      newPass: newPass,
    );
    result.fold(
      (failure) => emit(ResetPassFailure(failure: failure)),
      (success) => emit(
        ResetPassSuccess(),
      ),
    );
  }

  Future<void> changePassword({
    required String email,
    required String oldPass,
    required String newPass,
  }) async {
    emit(ResetPassLoading());
    final result = await changePasswordUsecase(
      email: email,
      oldPass: oldPass,
      newPass: newPass,
    );
    result.fold(
      (failure) => emit(ResetPassFailure(failure: failure)),
      (success) => emit(
        ResetPassSuccess(),
      ),
    );
  }

  void test() {
    emit(ResetPassLoading());
    emit(ResetPassSuccess());
  }
}
