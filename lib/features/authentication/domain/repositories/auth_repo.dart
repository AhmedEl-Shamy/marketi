import 'package:dartz/dartz.dart';
import 'package:marketi/core/entities/user_entity.dart';
import 'package:marketi/core/utlis/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure, bool>> register({
    required String name,
    required String username,
    required String email,
    required String password,
  });

  Future<Either<Failure, UserEntity>> logIn({
    required String email,
    required String password,
    required bool rememberMe,
  });

  Future<Either<Failure, UserEntity>> logInByToken({
    required String token,
  });

  Future<Either<Failure, bool>> forgotPassword({
    required String email,
  });

  Future<Either<Failure, bool>> confirmEmail({
    required String otp,
    required String email,
  });

  Future<bool> logOut();
  bool isLogedIn();
}
