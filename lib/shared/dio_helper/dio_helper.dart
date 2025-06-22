import 'package:dio/dio.dart';
import 'package:bloceproject/shared/dio_helper/endpoints.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'http://127.0.0.1:8000/api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }


  static Future<Response> login({
    required String phone,
    required String password,
  }) async{
    return await dio.post(
      Endpoints.loginEndpoints,
      data: {
        'mobile': phone,
        'password': password,
      },
      options: Options(
        headers: {'Accept': 'application/json'},
        followRedirects: false,
        validateStatus: (status) {
          return status! < 500;
        }
      )

    );

  }

  static Future<Response> signUp({
    required String email,
    required String password,
    required String phone,

})async {
    return await dio.post(
      Endpoints.signUpEndpoints,
      data: {
        'email':email,
        'mobile':phone,
        'password':password,
      },
      options: Options(
        headers: {'Accept': 'application/json'},
        followRedirects: false,
        validateStatus: (status){
          return true;
        }
      )
    );
  }



  static Future<Response> logout() async{
    return await dio.get(
      'logout',
      options: Options(
        followRedirects: false,
        validateStatus: (status){
          return true;
        }
      )
    );
}


 Future<List<dynamic>> getAllCharacters() async{
    try{
      Response response = await dio.get('characters');
      print(response.data.toString());
      return response.data;
    }catch(e){
      print(e.toString());
      return[];
    }
}









  }