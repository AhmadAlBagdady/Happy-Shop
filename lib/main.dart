import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/else/cache_helper.dart';
import 'package:test1/cubit/cubit.dart';
import 'package:test1/login/login_screen.dart';
import 'package:test1/ui/add_product.dart';
import 'package:test1/ui/profile.dart';
import 'cubit/states.dart';
import 'else/bloc_observer.dart';
import 'else/dio_helper.dart';
import 'home/home_screen.dart';

void main() {
 BlocOverrides.runZoned(() {
   DioHelper.init();
   runApp(const MyApp());
 },
 blocObserver: MyBlocObserver(),
 );

}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context)=>AppCubit(),
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context,state){},
        builder: (context,state){
          AppCubit cubit = AppCubit.get(context);
          return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
                backwardsCompatibility: false,
                titleTextStyle: TextStyle(
                    color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                iconTheme: IconThemeData(color: Colors.white),
                backgroundColor: Colors.blue),
          ),
          darkTheme: ThemeData(
            scaffoldBackgroundColor: Colors.black12,
            appBarTheme: const AppBarTheme(
                backwardsCompatibility: false,
                titleTextStyle: TextStyle(
                    color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                iconTheme: IconThemeData(color: Colors.black),
                backgroundColor: Colors.blueGrey),      ),
          themeMode:cubit.isLight?ThemeMode.light:ThemeMode.dark,
          home: AnimatedSplashScreen(
            duration: 2500,
            backgroundColor: Color.fromARGB(255, 27, 153, 255),
            nextScreen:Profile(),
            splash: Image.asset('images/splashscreen.gif'),
          ),
        );},
      ),
    );
  }
}
