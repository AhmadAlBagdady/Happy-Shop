import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/else/dio_helper.dart';
import 'package:test1/service/api_provider.dart';
import 'package:test1/signup/cubit/cubit.dart';
import 'package:test1/signup/cubit/states.dart';
import '../components/compnents.dart';
import '../home/home_screen.dart';
import '../login/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var formkey = GlobalKey<FormState>();
  bool isScure = true;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var nameController = TextEditingController();

  String IsEnglish(var p1, var p2) {
    return isEnglish ? p1 : p2;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {
          if(state is RegisterSuccessStates){
            Navigator.pop(context);
          }
        },
        builder: (context, states) {
          return Directionality(
            textDirection: isEnglish ? TextDirection.ltr : TextDirection.rtl,
            child: Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Center(
                  child: SingleChildScrollView(
                    child: Form(
                      key: formkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          isEnglish
                              ? text(
                              text: isEnglish ? 'Sign Up' : 'إنشاء حساب',
                              fontSize: isEnglish ? 45 : 40,
                              fontWeight: FontWeight.bold)
                              : Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(children: [
                              text(
                                  text: isEnglish ? 'Sign Up' : 'إنشاء حساب',
                                  fontSize: isEnglish ? 45 : 40,
                                  fontWeight: FontWeight.bold)
                            ]),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          textformfield(
                              controller: emailController,
                              textInputType: TextInputType.emailAddress,
                              labeltext: IsEnglish(
                                  'Email', 'البريد الألكتروني'),
                              prefixicon: Icon(Icons.email),
                              validate: (value) {
                                if (value!.isEmpty) {
                                  return IsEnglish('Username must not be empty',
                                      'البريد الألكتروني يجب أن لا يكون فارغاً');
                                }
                                return null;
                              },
                              border: OutlineInputBorder()),
                          const SizedBox(
                            height: 20,
                          ),
                          textformfield(
                            controller: nameController,
                            textInputType: TextInputType.name,
                            labeltext: IsEnglish('Full Name', 'الأسم الكامل'),
                            prefixicon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                            validate: (value) {
                              if (value!.isEmpty) {
                                return IsEnglish('Full name must not be empty',
                                    'الأسم الكامل يجب أن لا يكون فارغاً');
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          textformfield(
                            controller: passwordController,
                            onPressed: () {
                              setState(() {
                                isScure = !isScure;
                              });
                            },
                            suffixicon: isScure
                                ? Icons.remove_red_eye
                                : Icons.remove_red_eye_outlined,
                            textInputType: TextInputType.datetime,
                            labeltext: IsEnglish('Password', 'كلمة المرور'),
                            prefixicon: Icon(Icons.lock),
                            border: OutlineInputBorder(),
                            obscuretext: isScure ? true : false,
                            validate: (value) {
                              if (value!.isEmpty) {
                                return IsEnglish('Password must not be empty',
                                    'كلمة المرور يجب أن لا تكون فارغة');
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          textformfield(
                              obscuretext: isScure ? true : false,
                              controller: confirmPasswordController,
                              prefixicon: Icon(Icons.confirmation_num),
                              textInputType: TextInputType.datetime,
                              validate: (value) {
                                if (value!.isEmpty) {
                                  return IsEnglish(
                                      'Confirm Password must not be empty',
                                      'التأكد من كلمة المرور يجب أن لا يكون فارغاً');
                                }
                                return null;
                              },
                              labeltext: IsEnglish(
                                  'Confirm password', 'التأكد من كلمة المرور'),
                              border: OutlineInputBorder()),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: double.infinity,
                            color: Colors.blue,
                            child: MaterialButton(
                              child: text(
                                  text: isEnglish ? 'Sign Up' : 'إنشاء حساب',
                                  fontSize: isEnglish ? 25 : 20,
                                  color: Colors.white),
                              onPressed: () {
                                RegisterCubit.get(context).registerUser(
                                    emailController: emailController.text,
                                    passwordController: passwordController.text,
                                    nameController: nameController.text,
                                    confirmPasswordController: confirmPasswordController.text,);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },

      ),
    );
  }
}
