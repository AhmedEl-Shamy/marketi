part of 'auth_cubit_cubit.dart';

sealed class AuthCubitState {}

final class AuthCubitInitial extends AuthCubitState {}
final class AuthCubitLoading extends AuthCubitState {}
final class AuthCubitLogInSuccess extends AuthCubitState {}
final class AuthCubitRegisterSuccess extends AuthCubitState {}
final class AuthCubitLogOutSuccess extends AuthCubitState {}
final class AuthCubitFailure extends AuthCubitState {
  final Failure failure;
  AuthCubitFailure({required this.failure});
}
