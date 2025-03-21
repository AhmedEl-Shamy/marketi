import 'package:dartz/dartz.dart';
import 'package:marketi/core/utlis/failure.dart';

import '../repositories/auth_repo.dart';

class ResetPassUsecase {
  final AuthRepo authRepo;

  ResetPassUsecase({required this.authRepo});

  Future<Either<Failure, bool>> call({
    required String accessToken,
    required String newPass,
  }) async {
    return authRepo.resetPassword(accessToken: accessToken, newPass: newPass);
  }
}
