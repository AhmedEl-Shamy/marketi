import 'package:dio/dio.dart';
import 'package:marketi/core/utlis/exceptions.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';

abstract class Failure {
  final String errorMsg;

  Failure({required this.errorMsg});
}

class ServerDBFailure extends Failure {
  ServerDBFailure({required super.errorMsg});
  factory ServerDBFailure.fromServerDBException({
    required ServerDBException exception,
  }) {
    return ServerDBFailure(errorMsg: exception.message);
  }
}

class SecureStorageFailure extends Failure {
  SecureStorageFailure({required super.errorMsg});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMsg});
  factory ServerFailure.fromDioException({
    required DioException exception,
  }) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMsg: 'Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMsg: 'Send Timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMsg: 'Receive Timeout');
      case DioExceptionType.badCertificate:
        return ServerFailure(errorMsg: 'Bad Certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(response: exception.response!);
      case DioExceptionType.cancel:
        return ServerFailure(errorMsg: 'Request Cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure(errorMsg: 'Connection Error');
      case DioExceptionType.unknown:
        return ServerFailure(errorMsg: 'Unknown Error, Please try again!');
    }
  }

  factory ServerFailure.fromResponse({
    required Response response,
  }) {
    return ServerFailure(errorMsg: response.data["msg"] ?? 'Unknown Error');
    //   switch(response.statusCode){
    //     case 400:
    //       return ServerFailure(errorMsg: 'Bad Request');
    //     case 401:
    //       return ServerFailure(errorMsg: 'Unauthorized');
    //     case 403:
    //       return ServerFailure(errorMsg: 'Forbidden');
    //     case 404:
    //       return ServerFailure(errorMsg: 'Not Found');
    //     case 500:
    //       return ServerFailure(errorMsg: 'Internal Server Error');
    //     case 502:
    //       return ServerFailure(errorMsg: 'Bad Gateway');
    //     case 503:
    //       return ServerFailure(errorMsg: 'Service Unavailable');
    //     case 504:
    //       return ServerFailure(errorMsg: 'Gateway Timeout');
    //     default:
    //       return ServerFailure(errorMsg: 'Unknown Error');
    //   }
  }
}
