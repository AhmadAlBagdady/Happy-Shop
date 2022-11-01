import 'package:dio/dio.dart';

class ApiProvider {
  Map<String, dynamic> headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
  };

  static const String _baseurl='http://192.168.137.209:8000/api/auth/';
  static const String _loginUrl='${_baseurl}login';
  static const String _registerUrl='${_baseurl}signup';


   Future<String> loginMobile({String? email,String? password})async{
    Map<String,dynamic>? body={
      "email":email,
      "password":password
    };
    var data =await postResponse(url: _loginUrl, body: body,);
    return data.toString();
  }
  Future<String> registerMobile({String? email,String? password,String? name,String? confirmPassword})async{
    Map<String,dynamic>? body={
      "email":email,
      "password":password,
      "name":name,
      "password_confirmation":confirmPassword,
    };
    var data =await postResponse(url: _registerUrl, body: body,);
    return data.toString();
  }

  getResponse({
    String? url,
  }) {
    headers["Authorization"] = "";
    Dio dio = Dio();
    dio.get(url!, options: Options(headers: headers)).then((value) {});
  }

  postResponse({String? url, var body}) {
    headers["Authorization"] = "";
    Dio dio = Dio();
    dio
        .post(url!, options: Options(headers: headers), data: body)
        .then((value) {});
  }
}
ApiProvider apiProvider=ApiProvider();
