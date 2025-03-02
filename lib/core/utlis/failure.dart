import 'package:supabase_flutter/supabase_flutter.dart';

abstract class Failure {
  final String errorMsg;

  Failure({required this.errorMsg});
}

class PostgresFaliure extends Failure {
  PostgresFaliure({required super.errorMsg});
  factory PostgresFaliure.fromPostgresException({
    required PostgrestException exception,
  }) {
    return PostgresFaliure(errorMsg: exception.message);
  }
}
