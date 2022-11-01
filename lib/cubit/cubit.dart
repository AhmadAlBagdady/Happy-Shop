import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/cubit/states.dart';


class AppCubit extends Cubit<AppStates>{

  AppCubit() : super(AppInitialStates());

  static AppCubit get(context)=> BlocProvider.of(context);
  bool isLight=true;


  void changeTheme()
  {
    isLight=!isLight;

    emit(AppChangeThemeStates());
  }


}

