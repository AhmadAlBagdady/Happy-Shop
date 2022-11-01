import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/login/cubit/states.dart';
import 'package:test1/models/login.dart';

import '../../else/dio_helper.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialStates());

  static LoginCubit get(context) => BlocProvider.of(context);

  late LoginModel loginModel;

  void loginUser({
    required String emailController,
    required String passwordController,
  }) {
    emit(LoginLoadingStates());
    DioHelper.postData(url: 'auth/login', data: {
      "email": emailController,
      "password": passwordController,
    }).then((value) {
        loginModel = LoginModel.fromJson(value.data);
        emit(LoginSuccessStates(loginModel));
    }).catchError((error) {
      print(error);
      emit(LoginErrorStates());
    });
  }
}
