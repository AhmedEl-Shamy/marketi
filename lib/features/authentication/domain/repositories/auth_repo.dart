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

  Future<Either<Failure, UserEntity>> logInWithToken();

  Future<Either<Failure, bool>> forgotPassword({
    required String email,
  });

  Future<Either<Failure, UserEntity>> verifyOTP({
    required String otp,
    required String email,
    required String verifyType,
  });
  Future<Either<Failure, bool>> resetPassword({
    required String accessToken,
    required String newPass,
  });
  Future<Either<Failure, bool>> changePassword({
    required String email,
    required String oldPass,
    required String newPass,
  });
  Future<Either<Failure, bool>> logOut(String accessToken);
  bool isLogedIn();
  Future<Either<Failure, void>> updateUserData({
    required String name,
    required String username,
    required String oldUsername,
    required String accessToken,
    required String id,
  });
}
