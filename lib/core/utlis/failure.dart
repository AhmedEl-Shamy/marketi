import 'package:supabase_flutter/supabase_flutter.dart';

abstract class Failure {
  final String errorMsg;

  Failure({required this.errorMsg});
}

class AuthFailure extends Failure {
  AuthFailure({required super.errorMsg});
  factory AuthFailure.fromAuthException({required AuthException exception}){
    if(int.parse(exception.statusCode!) >= 500){
      return AuthFailure(errorMsg: 'Internal Server Error!');
    }
    return AuthFailure(errorMsg: exception.message);
  }
}