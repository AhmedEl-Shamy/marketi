part of 'buy_again_cubit.dart';

sealed class BuyAgainState {}

final class BuyAgainInitial extends BuyAgainState {}

final class BuyAgainLoading extends BuyAgainState {}

final class BuyAgainSuccess extends BuyAgainState {}

final class BuyAgainFailure extends BuyAgainState {
  final Failure failure;

  BuyAgainFailure(this.failure);
}
