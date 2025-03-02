import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/utlis/failure.dart';
import 'package:marketi/features/authentication/domain/usecases/register_usecase.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit({
    required RegisterUsecase registerUsecase,
  })  : _registerUsecase = registerUsecase,
        super(RegisterInitial());

  final RegisterUsecase _registerUsecase;

  Future<void> register({
    required String email,
    required String password,
    required String name,
    required String username,
  }) async {
    emit(RegisterLoading());
    final Either<Failure, void> result = await _registerUsecase.call(
      name: name,
      username: username,
      email: email,
      password: password,
    );
    result.fold(
      (failure) => emit(RegisterFailure(failure: failure)),
      (val) => emit(RegisterSuccess(email: email)),
    );
  }
}
