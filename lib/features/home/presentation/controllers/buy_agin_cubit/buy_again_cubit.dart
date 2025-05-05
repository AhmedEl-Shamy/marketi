import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/features/home/domain/usecases/fetch_buy_again.dart';

import '../../../../../core/entities/product_entity.dart';
import '../../../../../core/utlis/failure.dart';

part 'buy_again_state.dart';

class BuyAgainCubit extends Cubit<BuyAgainState> {
  BuyAgainCubit({required this.fetchBuyAgainUsecase}) : super(BuyAgainInitial());
  final List<ProductEntity> products = [];
  final FetchBuyAgainUsecase fetchBuyAgainUsecase;

  Future<void> fetchBuyAgain({int limit = 10, int skip = 0}) async {
    emit(BuyAgainLoading());
    final result = await fetchBuyAgainUsecase.call(
      limit: limit,
      skip: skip,
    );
    result.fold(
      (failure) => emit(BuyAgainFailure(failure)),
      (products) {
        this.products.addAll(products);
        emit(BuyAgainSuccess());
      },
    );
  }
}
