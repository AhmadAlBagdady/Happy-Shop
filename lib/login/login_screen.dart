import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:test1/components/constatnts.dart';
import 'package:test1/cubit/cubit.dart';
import 'package:test1/service/api_provider.dart';
import 'package:test1/signup/sign_up.dart';
import 'package:test1/ui/users_screen.dart';
import '../components/compnents.dart';
import '../else/dio_helper.dart';
import '../home/home_screen.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

bool isEnglish = true;

String IsEnglish(var p1, var p2) {
  return isEnglish ? p1 : p2;
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formkey = GlobalKey<FormState>();
  bool isScure = true;
  IconData pass = Icons.remove_red_eye;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LoginCubit(),
        child: BlocConsumer<LoginCubit, LoginStates>(
          listener: (context, state) {
            print('aaaaaa');
            if (state is LoginSuccessStates) {
              print('bbbbbbbbb');
              if(state.loginModel.status!){
                print('ccccccccccc');
                token=state.loginModel.accessToken!;
                print(state.loginModel.accessToken);

                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ));
                print('ddddddddddd');
              }
            }
          },
          builder: (context, state) {
            return Scaffold(
              // appBar: AppBar(),
              body: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Form(
                  key: formkey,
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Directionality(
                            textDirection: isEnglish
                                ? TextDirection.ltr
                                : TextDirection.rtl,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                isEnglish
                                    ? text(
                                        text: isEnglish
                                            ? 'Login'
                                            : 'تسجيل الدخول',
                                        fontWeight: FontWeight.bold,
                                        fontSize: isEnglish ? 60 : 40)
                                    : Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 13),
                                        child: Row(children: [
                                          text(
                                              text: isEnglish
                                                  ? 'Login'
                                                  : 'تسجيل الدخول',
                                              fontWeight: FontWeight.bold,
                                              fontSize: isEnglish ? 60 : 40),
                                        ]),
                                      ),
                                const SizedBox(height: 60),
                                textformfield(
                                  textInputType: TextInputType.emailAddress,
                                    controller: emailController,
                                    labeltext: isEnglish
                                        ? 'Email address'
                                        : 'البريد الألكتروني',
                                    prefixicon: Icon(Icons.email),
                                    border: OutlineInputBorder(),
                                    validate: (value) {
                                      if (value!.isEmpty) {
                                        return IsEnglish(
                                            'Username must not be empty',
                                            'البريد الألكتروني يجب أن لا يكون فارغاً');
                                      }
                                      return null;
                                    }),
                                const SizedBox(
                                  height: 30,
                                ),
                                textformfield(
                                    onPressed: () {
                                      setState(() {
                                        isScure = !isScure;
                                      });
                                    },
                                    suffixicon: isScure
                                        ? Icons.remove_red_eye
                                        : Icons.remove_red_eye_outlined,
                                    controller: passwordController,
                                    labeltext:
                                        isEnglish ? 'Password' : 'كلمة المرور',
                                    prefixicon: Icon(Icons.lock),
                                    obscuretext: isScure ? true : false,
                                    border: OutlineInputBorder(),
                                    validate: (value) {
                                      if (value!.isEmpty) {
                                        return IsEnglish(
                                            'Password must not be empty',
                                            'كلمة المرور يجب أن لا تكون فارغة');
                                      }
                                    }),
                                const SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  width: double.infinity,
                                  color: Colors.blue,
                                  child: MaterialButton(
                                    child: text(
                                        text: isEnglish
                                            ? 'Login'
                                            : 'تسجيل الدخول',
                                        fontSize: isEnglish ? 25 : 20,
                                        color: Colors.white),
                                    onPressed: () {
                                      if (formkey.currentState!.validate()) {
                                        LoginCubit.get(context).loginUser(
                                            emailController:
                                                emailController.text,
                                            passwordController:
                                                passwordController.text);
                                      }
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    text(
                                        text: isEnglish
                                            ? 'Don\'t have an account?'
                                            : 'لا تملك حساب؟'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    textbutton(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SignUpScreen()),
                                          );
                                        },
                                        texto: isEnglish
                                            ? 'Register now'
                                            : 'إنشاء حساب الآن'),
                                  ],
                                ),
                                const SizedBox(height: 60),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              materialbutton(
                                  onPressed: () {
                                    setState(() {
                                      isEnglish = true;
                                    });
                                  },
                                  texto: 'English',
                                  color: isEnglish ? Colors.white : Colors.blue,
                                  colorforbutton:
                                      isEnglish ? Colors.blue : Colors.white),
                              const SizedBox(
                                width: 20,
                              ),
                              materialbutton(
                                  onPressed: () {
                                    setState(() {
                                      isEnglish = false;
                                    });
                                  },
                                  texto: 'العربية',
                                  color: isEnglish ? Colors.blue : Colors.white,
                                  colorforbutton:
                                      isEnglish ? Colors.white : Colors.blue),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
//
//
//
// apiProvider.loginMobile(email: "$emailController",password:"$passwordController" ).then((value) {
//
// Navigator.of(context)
//     .pushReplacement(MaterialPageRoute(
//   builder: (context) => HomeScreen(),
// ));
// });

//
// if (formkey.currentState!.validate()) {}
