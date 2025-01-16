import 'package:dartz/dartz.dart';

import '../../../../core/utlis/failure.dart';
import '../repositories/auth_repo.dart';

class LogOutUsecase {
  final AuthRepo authRepo;

  LogOutUsecase({required this.authRepo});

  Future<Either<Failure, void>> call() async {
    return authRepo.logOut();
  }
}