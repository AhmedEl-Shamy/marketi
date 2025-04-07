part of 'log_in_cubit.dart';

sealed class LogInState {}

final class LogInInitial extends LogInState {}

final class LogInLoading extends LogInState {}

final class LogInSuccess extends LogInState {
  final UserEntity user;
  LogInSuccess({required this.user});
}

final class LogOutSuccess extends LogInState {}

final class LogInFailure extends LogInState {
  final Failure failure;
  LogInFailure({required this.failure});
}

final class LogInTokenFailure extends LogInState {
  final Failure failure;
  LogInTokenFailure({required this.failure});
}
