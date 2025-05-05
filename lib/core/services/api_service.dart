import 'package:dio/dio.dart';

abstract class APIService {
  Future get({
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  });
  Future post({
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  });
  Future put({
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  });
  Future delete({
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  });
  Future patch({
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  });
}

class ApiServiceImpl extends APIService {
  final Dio dio;

  ApiServiceImpl({
    required this.dio,
  });

  @override
  Future delete({
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) async {
    Response response = await dio.delete(
      path,
      data: body,
      options: Options(headers: headers),
    );
    return response.data;
  }

  @override
  Future get({
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) async {
    Response response = await dio.get(path);
    return response.data;
  }

  @override
  Future post({
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) async {
    Response response = await dio.post(
      path,
      data: body,
      options: Options(headers: headers),
    );
    return response.data;
  }

  @override
  Future put({
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) async {
    Response response = await dio.put(
      path,
      data: body,
      options: Options(headers: headers),
    );
    return response.data;
  }

  @override
  Future patch({
    required String path,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) async {
    Response response = await dio.patch(
      path,
      data: body,
      options: Options(headers: headers),
    );
    return response.data;
  }
}
