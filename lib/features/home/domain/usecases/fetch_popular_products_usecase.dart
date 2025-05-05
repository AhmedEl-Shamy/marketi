import 'package:dartz/dartz.dart';
import 'package:marketi/core/entities/product_entity.dart';
import 'package:marketi/core/utlis/failure.dart';
import 'package:marketi/features/home/domain/repositories/home_repo.dart';

class FetchPopularProductsUsecase {
  final HomeRepo homeRepo;

  FetchPopularProductsUsecase({required this.homeRepo});

  Future<Either<Failure, List<ProductEntity>>> call({required int limit, int skip = 0}) {
    return homeRepo.fetchPupularProducts(limit: limit, skip: skip);
  }
}
