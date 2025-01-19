import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/utlis/failure.dart';

part 'auth_cubit_state.dart';

class AuthCubitCubit extends Cubit<AuthCubitState> {
  AuthCubitCubit() : super(AuthCubitInitial());
  
}
