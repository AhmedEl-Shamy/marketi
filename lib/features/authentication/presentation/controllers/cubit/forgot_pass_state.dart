part of 'forgot_pass_cubit.dart';

sealed class ForgotPassState {}

final class ForgotPassInitial extends ForgotPassState {}
final class ForgotPassLoading extends ForgotPassState {}
final class ForgotPassSuccess extends ForgotPassState {}
final class ForgotPassFailure extends ForgotPassState {
  final Failure failure;

  ForgotPassFailure({required this.failure});
}
