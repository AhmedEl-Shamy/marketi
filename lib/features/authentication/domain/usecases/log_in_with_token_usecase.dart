import 'package:dartz/dartz.dart';
import 'package:marketi/core/entities/user_entity.dart';

import '../../../../core/utlis/failure.dart';
import '../repositories/auth_repo.dart';

class LogInWithTokenUsecase {
  final AuthRepo authRepo;

  LogInWithTokenUsecase({required this.authRepo});

  Future<Either<Failure, UserEntity>> call() {
    return authRepo.logInWithToken();
  }
}
