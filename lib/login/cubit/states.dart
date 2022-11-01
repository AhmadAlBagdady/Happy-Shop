import 'package:test1/models/login.dart';

abstract class LoginStates {}

class LoginInitialStates extends LoginStates{}

class LoginSuccessStates extends LoginStates{
  late final LoginModel loginModel;

  LoginSuccessStates(this.loginModel);
}

class LoginLoadingStates extends LoginStates{}

class LoginErrorStates extends LoginStates{}

