import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:test1/components/constatnts.dart';

class DioHelper {

  static late Dio dio;

  static const String _baseurl='http://192.168.137.140:8000/api/';

  static init() {

    dio = Dio(BaseOptions(
        baseUrl:_baseurl,
        receiveDataWhenStatusError: true,
       ));
  }

  static Future<Response> getData({

    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio.options.headers={
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Bearer $token",
    };
    return await dio.get(
      url,
    );
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic> data,
  }) async {
    dio.options.headers={
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Bearer $token",
    };
    return await dio.post(url, data: data,);
  }
}
