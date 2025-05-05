import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/entities/product_entity.dart';
import 'package:marketi/core/utlis/failure.dart';
import 'package:marketi/features/home/domain/usecases/fetch_popular_products_usecase.dart';

part 'popular_products_state.dart';

class PopularProductsCubit extends Cubit<PopularProductsState> {
  PopularProductsCubit({
    required this.fetchPopularProductsUsecase,
  }) : super(PopularProductsInitial());
  final List<ProductEntity> products = [];
  final FetchPopularProductsUsecase fetchPopularProductsUsecase;

  Future<void> fetchPopularProducts({int limit = 10, int skip = 0}) async {
    emit(PopularProductsLoading());
    final result =
        await fetchPopularProductsUsecase.call(limit: limit, skip: skip);
    result.fold(
      (failure) => emit(PopularProductsFailure(failure)),
      (products) {
        this.products.addAll(products);
        emit(PopularProductsSuccess());
      },
    );
  }
}
