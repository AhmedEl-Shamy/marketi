part of 'verify_cubit.dart';

sealed class VerifyState {}
final class VerifyInitial extends VerifyState {}
final class VerifyLoading extends VerifyState {}
final class VerifySuccess extends VerifyState {}
final class VerifyFailure extends VerifyState {
  final Failure failure;

  VerifyFailure({required this.failure});
}
