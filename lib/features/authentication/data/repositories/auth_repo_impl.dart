import 'package:dartz/dartz.dart';
import 'package:marketi/core/entities/user_entity.dart';
import 'package:marketi/core/utlis/failure.dart';
import 'package:marketi/features/authentication/data/data_sources/auth_local_data_source.dart';
import 'package:marketi/features/authentication/data/data_sources/auth_remote_data_source.dart';
import 'package:marketi/features/authentication/domain/failures/auth_failure.dart';
import 'package:marketi/features/authentication/domain/repositories/auth_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepoImpl extends AuthRepo {
  final SupabaseClient client;
  final AuthLocalDataSource localDataSource;
  final AuthRemoteDataSource remoteDataSource;

  AuthRepoImpl({
    required this.client,
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, bool>> confirmEmail({required String otp, required String email}) async {
    try {
      await client.auth.verifyOTP(type: OtpType.email, token: otp, email: email);
      return right(true);
    } on AuthException catch (e) {
      return left(
        AuthFailure.fromAuthException(exception: e),
      );
    }
  }

  @override
  Future<Either<Failure, bool>> forgotPassword({required String email}) {
    // TODO: implement forgotPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserEntity>> logIn({
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
  Future<bool> logOut() async {
    await client.auth.signOut();
    return true;
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
      AuthResponse response = await client.auth.signUp(
        password: password,
        email: email,
      );
      if (response.user != null) {
        await remoteDataSource.setUserData(
          id: response.user!.id,
          name: name,
          username: username,
          email: email,
        );
      }
      return right(true);
    } on AuthException catch (e) {
      return left(
        AuthFailure.fromAuthException(exception: e),
      );
    } on PostgrestException catch (e) {
      return left(
        PostgresFaliure.fromPostgresException(exception: e),
      );
    }
  }

  @override
  bool isLogedIn() {
    if (client.auth.currentUser == null) return false;
    return true;
  }

  Future<void> _checkExsistUsername(String username) async {
    PostgrestList data =
        await client.from('Profiles').select().eq('username', username);
    if (data.isNotEmpty) {
      throw PostgrestException(
        message: 'Username is taken. Try another.',
      );
    }
  }
}
