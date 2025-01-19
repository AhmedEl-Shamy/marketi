import 'package:dartz/dartz.dart';

import '../../../../core/utlis/failure.dart';
import '../repositories/auth_repo.dart';

class LogInUsecase {
  LogInUsecase({required this.authRepo});
  
  final AuthRepo authRepo;

  Future<Either<Failure, void>> call({
    required String email,
    required String password,
    required bool rememberMe,
  }) async {
    return authRepo.logInByEmail(email: email, password: password, rememberMe: rememberMe);
  }
}
