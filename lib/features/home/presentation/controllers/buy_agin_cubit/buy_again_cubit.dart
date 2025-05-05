import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/entities/product_entity.dart';
import '../../../../../core/utlis/failure.dart';

part 'buy_again_state.dart';

class BuyAgainCubit extends Cubit<BuyAgainState> {
  BuyAgainCubit() : super(BuyAgainInitial());
}
