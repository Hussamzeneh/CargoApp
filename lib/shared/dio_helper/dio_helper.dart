import 'package:dio/dio.dart';
import 'package:bloceproject/shared/dio_helper/endpoints.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://192.168.119.17:8000/api',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> login({
    required String phone,
    required String password,
  }) async {
    return await dio.post(Endpoints.loginEndpoints,
        data: {
          'mobile': phone,
          'password': password,
        },
        options: Options(
            headers: {'Accept': 'application/json'},
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }));
  }

  static Future<Response> signUp({
    required String name,
    required String email,
    required String password,
    required String phone,
  }) async {
    return await dio.post(Endpoints.signUpEndpoints,
        data: {
          'name': name,
          'email': email,
          'phone': phone,
          'password': password,
          'password_confirmation': password,
          'role': 'client',
        },
        options: Options(
            headers: {'Accept': 'application/json'},
            followRedirects: false,
            validateStatus: (status) {
              return true;
            }));
  }

  static Future<Response> logout() async {
    return await dio.get('logout',
        options: Options(
            followRedirects: false,
            validateStatus: (status) {
              return true;
            }));
  }

  static Future<Response> getAnnouncements() async {
    return await dio.get(
      Endpoints.announcement,
      options: Options(
        followRedirects: false,
        validateStatus: (status) {
          return true;
        },
      ),
    );
  }

  static Future<Response> getProduct() async {
    return await dio.get(
      Endpoints.getProducts,
      options: Options(
        followRedirects: false,
        validateStatus: (status) {
          return true;
        },
      ),
    );
  }

  static Future<Response> verifyEmail({
    required String otp,
  }) async {
    return await dio.post(
      Endpoints.loginEndpoints,
      data: {
        'code': otp,
      },
      options: Options(
        headers: {'Accept': 'application/json'},
        followRedirects: false,
        validateStatus: (status) {
          return status! < 500;
        },
      ),
    );
  }
}
