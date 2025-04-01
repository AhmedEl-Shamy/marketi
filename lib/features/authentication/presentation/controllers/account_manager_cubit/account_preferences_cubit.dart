import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utlis/failure.dart';
import '../../../domain/usecases/update_user_data_usecase.dart';

part 'account_preferences_state.dart';

class AccountPreferencesCubit extends Cubit<AccountPreferencesState> {
  AccountPreferencesCubit({
    required this.updateUserDataUsecase,
  }) : super(AccountPreferencesInitial());

  final UpdateUserDataUsecase updateUserDataUsecase;

  Future<void> updateUserData({
    required String name,
    required String oldUsername,
    required String username,
    required String id,
    required String accessToken,
  }) async {
    emit(AccountPreferencesLoading());
    final Either<Failure, void> result = await updateUserDataUsecase.call(
      name: name,
      username: username,
      oldUsername: oldUsername,
      id: id,
      accessToken: accessToken,
    );
    result.fold(
      (failure) => emit(
        AccountPreferencesFailure(
          failure: failure,
        ),
      ),
      (val) => emit(AccountPreferencesSuccess()),
    );
  }
}
