import 'package:dartz/dartz.dart';
import 'package:marketi/core/utlis/failure.dart';

import '../repositories/auth_repo.dart';

class LogOutUsecase {
  final AuthRepo authRepo;

  LogOutUsecase({required this.authRepo});

  Future<Either<Failure, bool>> call({required String accessToken}) async {
    return authRepo.logOut(accessToken);
  }
}
