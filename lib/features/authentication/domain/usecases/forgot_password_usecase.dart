import 'package:dartz/dartz.dart';

import '../../../../core/utlis/failure.dart';
import '../repositories/auth_repo.dart';

class ForgotPasswordUsecase {
  final AuthRepo authRepo;

  ForgotPasswordUsecase({required this.authRepo});

  Future<Either<Failure, void>> call({required String email}) {
    return authRepo.forgotPassword(email: email);
  }
}
