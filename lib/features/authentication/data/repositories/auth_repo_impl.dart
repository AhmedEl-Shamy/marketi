import 'package:dartz/dartz.dart';
import 'package:marketi/core/entities/user_entity.dart';
import 'package:marketi/core/utlis/failure.dart';
import 'package:marketi/features/authentication/data/data_sources/local_data_source.dart';
import 'package:marketi/features/authentication/data/data_sources/remote_data_source.dart';
import 'package:marketi/features/authentication/domain/failures/auth_failure.dart';
import 'package:marketi/features/authentication/domain/repositories/auth_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepoImpl extends AuthRepo {
  final SupabaseClient client;
  final LocalDataSource localDataSource;
  final RemoteDataSource remoteDataSource;

  AuthRepoImpl({
    required this.client,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, void>> confirmEmail({required String otp}) {
    // TODO: implement confirmEmail
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> forgotPassword({required String email}) {
    // TODO: implement forgotPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserEntity>> logInByEmail({
    required String email,
    required String password,
    required bool rememberMe,
  }) async {
    try {
      final AuthResponse response = await client.auth.signInWithPassword(
        password: password,
        email: email,
      );
      UserEntity user = await remoteDataSource.getUserData(response.user!.id);
      return right(user);
    } on AuthException catch (e) {
      return left(
        AuthFailure.fromAuthException(exception: e),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> logInByToken({required String token}) {
    // TODO: implement logInByToken
    throw UnimplementedError();
  }

  @override
  Future<void> logOut() async {
    await client.auth.signOut();
  }

  @override
  Future<Either<Failure, bool>> register({
    // required String name,
    // required String username,
    required String email,
    required String password,
  }) async {
    try {
      await client.auth.signInWithPassword(password: password, email: email);
      return right(true);
    } on AuthException catch (e) {
      return left(
        AuthFailure.fromAuthException(exception: e),
      );
    }
  }

  @override
  bool isLogedIn () {
    if(client.auth.currentUser == null) return false;
    return true;
  }
}
