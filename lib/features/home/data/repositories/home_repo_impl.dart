import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:marketi/core/entities/product_entity.dart';
import 'package:marketi/core/utlis/failure.dart';
import 'package:marketi/features/home/domain/repositories/home_repo.dart';

import '../data_sources/home_remote_data_source.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl({required this.homeRemoteDataSource});
  @override
  Future<Either<Failure, List<ProductEntity>>> fetchBestProducts({
    int limit = 10,
    int skip = 0,
  }) async {
    try {
      List<ProductEntity> producs =
          await homeRemoteDataSource.fetchBestProducts(
        limit: limit,
        skip: skip,
      );
      return Right(producs);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(exception: e));
    }
  }

  @override
  Future<Either<Failure, List<String>>> fetchBrands({
    int limit = 10,
    int skip = 0,
  }) {
    // TODO: implement fetchBrands
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> fetchBuyAgain({
    int limit = 10,
    int skip = 0,
  }) async {
    try {
      List<ProductEntity> producs = await homeRemoteDataSource.fetchBuyAgain(
        limit: limit,
        skip: skip,
      );
      return Right(producs);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(exception: e));
    }
  }

  @override
  Future<Either<Failure, List<String>>> fetchCategories({
    int limit = 10,
    int skip = 0,
  }) {
    // TODO: implement fetchCategories
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> fetchPupularProducts({
    int limit = 10,
    int skip = 0,
  }) async {
    try {
      List<ProductEntity> producs =
          await homeRemoteDataSource.fetchPupularProducts(
        limit: limit,
        skip: skip,
      );
      return Right(producs);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(exception: e));
    }
  }
}
