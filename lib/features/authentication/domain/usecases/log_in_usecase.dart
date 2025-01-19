import 'package:dartz/dartz.dart';
import 'package:marketi/core/entities/user_entity.dart';

import '../../../../core/utlis/failure.dart';
import '../repositories/auth_repo.dart';

class LogInUsecase {
  LogInUsecase({required this.authRepo});
  
  final AuthRepo authRepo;

  Future<Either<Failure, UserEntity>> call({
    required String email,
    required String password,
    required bool rememberMe,
  }) async {
    return authRepo.logIn(email: email, password: password, rememberMe: rememberMe);
  }
}
