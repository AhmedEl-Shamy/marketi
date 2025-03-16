import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/utlis/failure.dart';
import 'package:marketi/features/authentication/domain/usecases/confirm_email_usecase.dart';

part 'verify_state.dart';

class VerifyCubit extends Cubit<VerifyState> {
  VerifyCubit({required VerifyOTPUsecase confirmEmailUsecase})
      : _confirmEmailUsecase = confirmEmailUsecase,
        super(VerifyInitial());
  final VerifyOTPUsecase _confirmEmailUsecase;

  Future<void> verify({
    required String otp,
    required String email,
    required String verifyType,
  }) async {
    emit(VerifyLoading());
    final result = await _confirmEmailUsecase.call(
      otp: otp,
      email: email,
      VerifyType: verifyType,
    );
    result.fold(
      (failure) => emit(VerifyFailure(failure: failure)),
      (val) => emit(VerifySuccess()),
    );
  }
}
