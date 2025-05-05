import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/entities/product_entity.dart';
import '../../../../../core/utlis/failure.dart';

part 'best_for_you_state.dart';

class BestForYouCubit extends Cubit<BestForYouState> {
  BestForYouCubit() : super(BestForYouInitial());
}
