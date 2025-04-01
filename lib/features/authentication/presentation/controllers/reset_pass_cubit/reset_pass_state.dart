part of 'reset_pass_cubit.dart';

sealed class ResetPassState {}

final class ResetPassInitial extends ResetPassState {}
final class ResetPassLoading extends ResetPassState {}
final class ResetPassFailure extends ResetPassState {
  final Failure failure;

  ResetPassFailure({required this.failure});
}
final class ResetPassSuccess extends ResetPassState {}

