part of 'log_in_cubit.dart';

sealed class LogInState {}

final class LogInInitial extends LogInState {}
final class LogInLoading extends LogInState {}
final class LogInLogInSuccess extends LogInState {
  final UserEntity user;
  LogInLogInSuccess({required this.user});
}

final class LogInLogOutSuccess extends LogInState {}
final class LogInFailure extends LogInState {
  final Failure failure;
  LogInFailure({required this.failure});
}
