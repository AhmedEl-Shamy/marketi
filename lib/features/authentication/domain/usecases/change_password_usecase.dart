import 'package:dartz/dartz.dart';
import 'package:marketi/features/authentication/domain/repositories/auth_repo.dart';

import '../../../../core/utlis/failure.dart';

class ChangePasswordUsecase {
  final AuthRepo authRepo;

  ChangePasswordUsecase({required this.authRepo});

  Future<Either<Failure, bool>> call({
    required String email,
    required String oldPass,
    required String newPass,
  }) async {
    return authRepo.changePassword(
      email: email,
      oldPass: oldPass,
      newPass: newPass,
    );
  }
}
