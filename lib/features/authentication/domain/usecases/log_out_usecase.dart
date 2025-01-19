
import '../repositories/auth_repo.dart';

class LogOutUsecase {
  final AuthRepo authRepo;

  LogOutUsecase({required this.authRepo});

  Future<bool> call() async {
    return authRepo.logOut();
  }
}
