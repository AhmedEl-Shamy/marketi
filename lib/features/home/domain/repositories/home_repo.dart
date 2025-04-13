import 'package:dartz/dartz.dart';

import '../../../../core/entities/product_entity.dart';
import '../../../../core/utlis/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductEntity>>> fetchPupularProducts({int limit = 10});
  Future<Either<Failure, List<ProductEntity>>> fetchBestProducts({int limit = 10});
  Future<Either<Failure, List<ProductEntity>>> fetchBuyAgain({int limit = 10});
  Future<Either<Failure, List<String>>> fetchCategories({int limit = 10});
  Future<Either<Failure, List<String>>> fetchBrands({int limit = 10});
}