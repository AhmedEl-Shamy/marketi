
import '../repositories/auth_repo.dart';

class LogOutUsecase {
  final AuthRepo authRepo;

  LogOutUsecase({required this.authRepo});

  Future<void> call() async {
    return authRepo.logOut();
  }
}
