part of 'register_cubit.dart';

sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterSuccess extends RegisterState {
  final String email;

  RegisterSuccess({required this.email});
}

final class RegisterLoading extends RegisterState {}

final class RegisterFailure extends RegisterState {
  final Failure failure;

  RegisterFailure({required this.failure});
}
