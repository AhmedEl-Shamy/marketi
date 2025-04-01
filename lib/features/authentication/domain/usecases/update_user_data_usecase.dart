import 'package:dartz/dartz.dart';
import 'package:marketi/core/utlis/failure.dart';

import '../repositories/auth_repo.dart';

class UpdateUserDataUsecase {
  final AuthRepo authRepo;

  UpdateUserDataUsecase({required this.authRepo});

  Future<Either<Failure, void>> call({
    required String name,
    required String oldUsername,
    required String username,
    required String id,
    required String accessToken,
  }) async {
    return authRepo.updateUserData(
      name: name,
      username: username,
      oldUsername: oldUsername,
      id: id,
      accessToken: accessToken,
    );
  }
}
