part of 'account_preferences_cubit.dart';

sealed class AccountPreferencesState {}

final class AccountPreferencesInitial extends AccountPreferencesState {}

final class AccountPreferencesLoading extends AccountPreferencesState {}

final class AccountPreferencesSuccess extends AccountPreferencesState {}

final class AccountPreferencesFailure extends AccountPreferencesState {
  final Failure failure;

  AccountPreferencesFailure({required this.failure});
}
