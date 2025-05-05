import 'package:dio/dio.dart';
import 'package:marketi/core/models/product_model/product_model.dart';

import '../../../../core/entities/product_entity.dart';
import '../../../../core/services/api_service.dart';

abstract class HomeRemoteDataSource {
  Future<List<ProductEntity>> fetchPupularProducts({
    int limit = 10,
    int skip = 0,
  });
  Future<List<ProductEntity>> fetchBestProducts({
    int limit = 10,
    int skip = 0,
  });
  Future<List<ProductEntity>> fetchBuyAgain({
    int limit = 10,
    int skip = 0,
  });
  Future<List<String>> fetchCategories({
    int limit = 10,
    int skip = 0,
  });
  Future<List<String>> fetchBrands({
    int limit = 10,
    int skip = 0,
  });
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final APIService apiService;
  final String baseUrl;
  HomeRemoteDataSourceImpl({
    required this.apiService,
    required this.baseUrl,
  });

  @override
  Future<List<ProductEntity>> fetchBestProducts({
    int limit = 10,
    int skip = 0,
  }) async {
    Response response = await apiService.get(
      path: '$baseUrl?limit=$limit&skip=$skip&sortBy=rating&order=desc',
    );
    List<ProductEntity> products = (response.data['products'] as List)
        .map((product) => ProductModel.fromJson(product))
        .toList();
    return products;
  }

  @override
  Future<List<String>> fetchBrands({int limit = 10, int skip = 0}) {
    // TODO: implement fetchBrands
    throw UnimplementedError();
  }

  @override
  Future<List<ProductEntity>> fetchBuyAgain(
      {int limit = 10, int skip = 0}) async {
    Response response = await apiService.get(
      path: '$baseUrl?limit=$limit&skip=$skip&sortBy=title&order=asc',
    );
    List<ProductEntity> products = (response.data['products'] as List)
        .map((product) => ProductModel.fromJson(product))
        .toList();
    return products;
  }

  @override
  Future<List<String>> fetchCategories({int limit = 10, int skip = 0}) {
    // TODO: implement fetchCategories
    throw UnimplementedError();
  }

  @override
  Future<List<ProductEntity>> fetchPupularProducts({
    int limit = 10,
    int skip = 0,
  }) async {
    Response response = await apiService.get(
      path: '$baseUrl?limit=$limit&skip=$skip&sortBy=rating&order=desc',
    );
    List<ProductEntity> products = (response.data['products'] as List)
        .map((product) => ProductModel.fromJson(product))
        .toList();
    return products;
  }
}
