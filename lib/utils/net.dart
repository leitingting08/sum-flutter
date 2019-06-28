import 'dart:async';
import 'package:dio/dio.dart';

Dio dio;

class NetRequest {
  static Future<Dio> instance() async{
    if (dio == null) {
      dio = new Dio();
    }
    //添加拦截器
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options) {
          print("请求之前");
          // Do something before request is sent
          return options; //continue
        },
        onResponse: (Response response) {
          print("响应之前");
          // Do something with response data
          return response; // continue
        },
        onError: (DioError e) {
          print("错误之前");
          // Do something with response error
          return e; //continue
        },
      ),
    );
    return dio;
  }

  static Future get(String url, Map<String, dynamic> params) async {
    var response = await (await instance()).get(url, queryParameters: params);
    print(response.data.toString());
    return response.data;
  }

  static Future post(String url, Map<String, dynamic> params) async {
    var response = await (await instance()).post(url, data: params);
    print(response.data.toString());
    return response.data;
  }
}
