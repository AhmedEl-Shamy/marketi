part of 'best_for_you_cubit.dart';

sealed class BestForYouState {}

final class BestForYouInitial extends BestForYouState {}
final class BestForYouLoading extends BestForYouState {}
final class BestForYouSuccess extends BestForYouState {
  final List<ProductEntity> products;

  BestForYouSuccess(this.products);
}
final class BestForYouFailure extends BestForYouState {
  final Failure failure;

  BestForYouFailure(this.failure);
}
