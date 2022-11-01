import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/models/register.dart';
import 'package:test1/signup/cubit/states.dart';

import '../../else/dio_helper.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitialStates());

  static RegisterCubit get(context) => BlocProvider.of(context);

  late RegisterModel registerModel;

  void registerUser({
    required String emailController,
    required String passwordController,
    required String nameController,
    required String confirmPasswordController,
  }) {
    emit(RegisterLoadingStates());
    print('aaaaaaaaaa');
    DioHelper.postData(url: 'auth/signup', data: {
      "email": emailController,
      "password": passwordController,
      "name": nameController,
      "password_confirmation": confirmPasswordController,
    }
    ).then((value) {  print('bbbbbbbbbbb');
      registerModel = RegisterModel.fromJson(value.data);
      print('ccccccccccccccc');
      emit(RegisterSuccessStates());
    }).catchError((error) {
      print(error);
      emit(RegisterErrorStates());
    });
  }
}
