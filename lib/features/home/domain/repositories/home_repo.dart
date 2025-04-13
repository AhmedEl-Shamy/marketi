import 'package:dartz/dartz.dart';
import 'package:marketi/features/product_details/domain/entities/product_entity.dart';

import '../../../../core/utlis/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductEntity>>> fetchPupularProducts();
  Future<Either<Failure, List<ProductEntity>>> fetchBestProducts();
  Future<Either<Failure, List<ProductEntity>>> fetchBuyAgain();
  Future<Either<Failure, List<ProductEntity>>> fetchCategories();
  Future<Either<Failure, List<ProductEntity>>> fetchBrands();
}