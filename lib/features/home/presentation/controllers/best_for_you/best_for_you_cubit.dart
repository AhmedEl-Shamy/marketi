import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/features/home/domain/usecases/fetch_best_products_usecase.dart';

import '../../../../../core/entities/product_entity.dart';
import '../../../../../core/utlis/failure.dart';

part 'best_for_you_state.dart';

class BestForYouCubit extends Cubit<BestForYouState> {
  BestForYouCubit({
    required this.fetchBestProductsUsecase,
  }) : super(BestForYouInitial());
  final List<ProductEntity> products = [];
  final FetchBestProductsUsecase fetchBestProductsUsecase;

  Future<void> fetchBestProducts({
    int limit = 10,
    int skip = 0,
  }) async {
    emit(BestForYouLoading());
    final result =
        await fetchBestProductsUsecase.call(limit: limit, skip: skip);
    result.fold(
      (failure) => emit(BestForYouFailure(failure)),
      (products) {
        this.products.addAll(products);
        emit(BestForYouSuccess());
      },
    );
  }
}
