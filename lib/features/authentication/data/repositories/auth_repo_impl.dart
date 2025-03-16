import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:marketi/core/entities/user_entity.dart';
import 'package:marketi/core/utlis/exceptions.dart';
import 'package:marketi/core/utlis/failure.dart';
import 'package:marketi/features/authentication/data/data_sources/auth_local_data_source.dart';
import 'package:marketi/features/authentication/data/data_sources/auth_remote_data_source.dart';
import 'package:marketi/features/authentication/domain/repositories/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final AuthLocalDataSource localDataSource;
  final AuthRemoteDataSource remoteDataSource;

  AuthRepoImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, UserEntity>> verifyOTP({
    required String otp,
    required String email,
    required String verifyType,
  }) async {
    try {
      UserEntity user = await remoteDataSource.verifyOTP(
        otp: otp,
        email: email,
        verifyType: verifyType,
      );
      return right(user);
    } on DioException catch (e) {
      return left(
        ServerFailure.fromDioException(exception: e),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> forgotPassword({required String email}) async {
    try {
      await remoteDataSource.forgotPassword(email: email);
      return right(true);
    } on DioException catch (e) {
      return left(
        ServerFailure.fromDioException(exception: e),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> logIn({
    required String email,
    required String password,
    required bool rememberMe,
  }) async {
    try {
      UserEntity user = await remoteDataSource.logIn(
        email: email,
        password: password,
      );
      List data = await (remoteDataSource.getUserData(user.id));
      
      user.setUserData(name: data[0]['display_name'], username: data[0]['username']);
      return right(user);
    } on DioException catch (e) {
      return left(
        ServerFailure.fromDioException(exception: e),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> logInWithToken({
    required String refreshToken,
  }) async {
    try {
      UserEntity user = await remoteDataSource.updateAccessToken(
        refreshToken: refreshToken,
      );
      return right(user);
    } on DioException catch (e) {
      return left(
        ServerFailure.fromDioException(exception: e),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> logOut(String accessToken) async {
    try {
      await remoteDataSource.logOut(accessToken);
      return right(true);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(exception: e));
    }
  }

  @override
  Future<Either<Failure, bool>> register({
    required String name,
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      await _checkExsistUsername(username);
      Map<String, dynamic> userData = await remoteDataSource.register(
        email: email,
        password: password,
      );
      await remoteDataSource.setUserData(
        id: userData['id'],
        name: name,
        username: username,
        email: email,
      );
      return right(true);
    } on DioException catch (e) {
      return left(
        ServerFailure.fromDioException(exception: e),
      );
    } on ServerDBException catch (e) {
      return left(
        ServerDBFailure.fromServerDBException(exception: e),
      );
    }
  }

  @override
  bool isLogedIn() {
    // if (client.auth.currentUser == null) return false;
    return true;
  }

  Future<void> _checkExsistUsername(String username) async {
    bool isExists = await remoteDataSource.isUserNameExists(username);
    if (isExists) {
      throw ServerDBException('Username is taken. Try another.');
    }
  }
}
