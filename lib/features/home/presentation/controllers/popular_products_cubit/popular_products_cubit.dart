import 'package:bloc/bloc.dart';
import 'package:marketi/core/entities/product_entity.dart';
import 'package:marketi/core/utlis/failure.dart';
import 'package:meta/meta.dart';

part 'popular_products_state.dart';

class PopularProductsCubit extends Cubit<PopularProductsState> {
  PopularProductsCubit() : super(PopularProductsInitial());
}
