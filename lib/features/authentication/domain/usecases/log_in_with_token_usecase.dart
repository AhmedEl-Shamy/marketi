import 'package:dartz/dartz.dart';

import '../../../../core/utlis/failure.dart';
import '../repositories/auth_repo.dart';

class LogInWithTokenUsecase {
  final AuthRepo authRepo;

  LogInWithTokenUsecase({required this.authRepo});

  Future<Either<Failure, void>> call({required String token}) async {
    return authRepo.logInByToken(token: token);
  }
}
