import 'package:dio/dio.dart';

abstract class APIService {
  Future get({
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  });
  Future post({
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  });
  Future put({
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  });
  Future delete({
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  });
  Future patch({
    required String endPoint,
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
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) async {
    Response response = await dio.delete(
      endPoint,
      data: body,
      options: Options(headers: headers),
    );
    return response.data;
  }

  @override
  Future get({
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) async {
    Response response = await dio.get(endPoint);
    print(response.data);
    return response.data;
  }

  @override
  Future post({
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) async {
    Response response = await dio.post(
      endPoint,
      data: body,
      options: Options(headers: headers),
    );
    return response.data;
  }

  @override
  Future put({
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) async {
    Response response = await dio.put(
      endPoint,
      data: body,
      options: Options(headers: headers),
    );
    return response.data;
  }

  @override
  Future patch({
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
  }) async {
    Response response = await dio.patch(
      endPoint,
      data: body,
      options: Options(headers: headers),
    );
    return response.data;
  }
}
