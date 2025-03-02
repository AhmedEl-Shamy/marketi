import 'package:dartz/dartz.dart';
import 'package:marketi/core/utlis/failure.dart';

import '../repositories/auth_repo.dart';

class RegisterUsecase {
  final AuthRepo authRepo;

  RegisterUsecase({required this.authRepo});

  Future<Either<Failure, void>> call({
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {
    return authRepo.register(
      name: name,
      username: username,
      email: email,
      password: password,
    );
  }
}
