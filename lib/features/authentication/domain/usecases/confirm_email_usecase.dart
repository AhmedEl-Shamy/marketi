import 'package:dartz/dartz.dart';
import 'package:marketi/core/utlis/failure.dart';
import 'package:marketi/features/authentication/domain/repositories/auth_repo.dart';

class ConfirmEmailUsecase {
  final AuthRepo authRepo;

  ConfirmEmailUsecase({required this.authRepo});

  Future<Either<Failure, void>> call(String otp) async {
    return authRepo.confirmEmail(otp: otp);
  }
}