import 'package:dartz/dartz.dart';
import 'package:marketi/core/entities/product_entity.dart';
import 'package:marketi/core/utlis/failure.dart';
import 'package:marketi/features/home/domain/repositories/home_repo.dart';

class FetchBestProductsUsecase {
  final HomeRepo homeRepo;

  FetchBestProductsUsecase({required this.homeRepo});

  Future<Either<Failure, List<ProductEntity>>> call({int limit = 10, int skip = 0}) {
    return homeRepo.fetchBestProducts(limit: limit, skip: skip);
  }
}