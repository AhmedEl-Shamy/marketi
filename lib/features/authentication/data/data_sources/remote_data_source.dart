import 'package:marketi/core/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/entities/user_entity.dart';

abstract class RemoteDataSource {
  Future<UserEntity> getUserData(String userId);
  Future<void> setUserData({
    required String id,
    required String name,
    required String username,
    required String email,
  });
}

class RemoteDataSourceImpl extends RemoteDataSource {
  final SupabaseClient client;

  RemoteDataSourceImpl({required this.client});
  @override
  Future<UserEntity> getUserData(String userId) async {
    final PostgrestList data =
        await client.from('Profiles').select().eq('id', userId);
    return UserModel.fromUserDataMap(data[0]);
  }

  @override
  Future<void> setUserData({
    required String id,
    required String name,
    required String username,
    required String email,
  }) async {
    await client.from('Profiles').upsert({
      'id': id,
      'display_name': name,
      'username': username,
      'email': email,
    });
  }
}
