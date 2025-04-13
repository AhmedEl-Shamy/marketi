import 'package:dartz/dartz.dart';
import 'package:marketi/core/utlis/failure.dart';
import 'package:marketi/features/home/domain/repositories/home_repo.dart';

import '../../../../core/entities/product_entity.dart';

class FetchBuyAgainUsecase {
  final HomeRepo homeRepo;

  FetchBuyAgainUsecase({required this.homeRepo});

  Future<Either<Failure, List<ProductEntity>>> call({required int limit}) {
    return homeRepo.fetchBuyAgain(limit: limit);
  }
}