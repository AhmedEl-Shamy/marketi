import 'package:marketi/core/services/api_service.dart';
import 'package:marketi/features/authentication/data/models/user_model/user_model.dart';

import '../../../../core/entities/user_entity.dart';

abstract class AuthRemoteDataSource {
  Future<Map<String, dynamic>> register({
    required String email,
    required String password,
  });

  Future<UserEntity> logIn({
    required String email,
    required String password,
  });

  Future<UserEntity> updateAccessToken({
    required String refreshToken,
  });

  Future<bool> forgotPassword({
    required String email,
  });

  Future<bool> resetPassword({
    required String accessToken,
    required String newPass,
  });

  Future<UserEntity> verifyOTP({
    required String otp,
    required String email,
    required String verifyType,
  });

  Future<bool> logOut(String accessToken);
  Future<List> getUserData(String userId);
  Future<bool> isUserNameExists(String username);

  Future<void> setUserData({
    required String id,
    required String name,
    required String username,
    required String email,
  });

  Future<void> updateUserData({
    required String id,
    required String name,
    required String username,
    required String accessToken,
  });
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  final APIService apiService;
  AuthRemoteDataSourceImpl({required this.apiService});
  @override
  Future<List> getUserData(String userId) async {
    List data = await apiService.get(
      endPoint: '/rest/v1/Profiles?id=eq.$userId',
    );
    return data;
  }

  @override
  Future<void> setUserData({
    required String id,
    required String name,
    required String username,
    required String email,
  }) async {
    // await client.from('Profiles').upsert({
    //   'id': id,
    //   'display_name': name,
    //   'username': username,
    //   'email': email,
    // });
    await apiService.post(
      endPoint: "/rest/v1/Profiles",
      body: {
        'id': id,
        'display_name': name,
        'username': username,
        'email': email,
      },
    );
  }

  @override
  Future<bool> forgotPassword({required String email}) async {
    await apiService.post(endPoint: "/auth/v1/recover", body: {'email': email});
    return true;
  }

  @override
  Future<UserEntity> logIn({
    required String email,
    required String password,
  }) async {
    Map<String, dynamic> data = await apiService.post(
      endPoint: '/auth/v1/token?grant_type=password',
      body: {
        'email': email,
        'password': password,
      },
    );
    return UserModel.fromJson(data);
  }

  @override
  Future<bool> logOut(String accessToken) async {
    await apiService.post(
        endPoint: "/auth/v1/logout",
        headers: {"Authorization": "Bearer $accessToken"});
    return true;
  }

  @override
  Future<Map<String, dynamic>> register({
    required String email,
    required String password,
  }) async {
    Map<String, dynamic> data = await apiService.post(
      endPoint: "/auth/v1/signup",
      body: {
        'email': email,
        'password': password,
      },
    );
    return {
      'id': data['id'],
      'email': email,
    };
  }

  @override
  Future<UserEntity> updateAccessToken({required String refreshToken}) async {
    Map<String, dynamic> data = await apiService.post(
      endPoint: "/auth/v1/token?grant_type=refresh_token",
      body: {
        'refresh_token': refreshToken,
      },
    );
    return UserModel.fromJson(data);
  }

  @override
  Future<UserEntity> verifyOTP({
    required String otp,
    required String email,
    required String verifyType,
  }) async {
    Map<String, dynamic> data = await apiService.post(
      endPoint: "/auth/v1/verify",
      body: {
        'email': email,
        'token': otp,
        'type': verifyType,
      },
    );
    return UserModel.fromJson(data);
  }

  @override
  Future<bool> isUserNameExists(String username) async {
    List data = await apiService.get(
      endPoint: '/rest/v1/Profiles?username=eq.$username',
    );
    if (data.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Future<bool> resetPassword({
    required String accessToken,
    required String newPass,
  }) async {
    await apiService.put(
      endPoint: '/auth/v1/user',
      body: {
        'password': newPass,
      },
      headers: {
        'Authorization': 'Bearer $accessToken',
      },
    );
    return true;
  }

  @override
  Future<void> updateUserData({
    required String id,
    required String accessToken,
    required String name,
    required String username,
  }) async {
    await apiService.patch(
      endPoint: "/rest/v1/Profiles?id=eq.$id",
      body: {
        'id': id,
        'display_name': name,
        'username': username,
      },
    );
  }
}
