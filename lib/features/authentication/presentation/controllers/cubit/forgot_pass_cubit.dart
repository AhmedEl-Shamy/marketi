import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/features/authentication/domain/usecases/forgot_password_usecase.dart';

import '../../../../../core/utlis/failure.dart';

part 'forgot_pass_state.dart';

class ForgotPassCubit extends Cubit<ForgotPassState> {
  ForgotPassCubit(this.forgotPasswordUsecase) : super(ForgotPassInitial());
  final ForgotPasswordUsecase forgotPasswordUsecase;

  Future<void> forgotPassword({required String email}) async {
    emit(ForgotPassLoading());
    final result = await forgotPasswordUsecase.call(email: email);
    result.fold(
      (failure) => emit(ForgotPassFailure(failure: failure)),
      (success) => emit(ForgotPassSuccess()),
    );
  }
}
