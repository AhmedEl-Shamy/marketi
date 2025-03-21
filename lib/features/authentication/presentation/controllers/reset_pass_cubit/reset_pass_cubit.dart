import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/utlis/failure.dart';
import 'package:marketi/features/authentication/domain/usecases/reset_pass_usecase.dart';

part 'reset_pass_state.dart';

class ResetPassCubit extends Cubit<ResetPassState> {
  ResetPassCubit({required this.resetPassUsecase}) : super(ResetPassInitial());
  final ResetPassUsecase resetPassUsecase;

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
}
