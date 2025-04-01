import 'package:dartz/dartz.dart';
import 'package:marketi/core/entities/user_entity.dart';
import 'package:marketi/core/utlis/failure.dart';
import 'package:marketi/features/authentication/domain/repositories/auth_repo.dart';

class VerifyOTPUsecase {
  final AuthRepo authRepo;

  VerifyOTPUsecase({required this.authRepo});

  Future<Either<Failure, UserEntity>> call({
    required String otp,
    required String email,
    required String verifyType,

  }) {
    return authRepo.verifyOTP(otp: otp, email: email, verifyType: verifyType);
  }
}
