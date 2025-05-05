part of 'popular_products_cubit.dart';

@immutable
sealed class PopularProductsState {}

final class PopularProductsInitial extends PopularProductsState {}
final class PopularProductsLoading extends PopularProductsState {}
final class PopularProductsSuccess extends PopularProductsState {
  final List<ProductEntity> products;

  PopularProductsSuccess(this.products);
}
final class PopularProductsFailure extends PopularProductsState {
  final Failure failure;

  PopularProductsFailure(this.failure);
}

