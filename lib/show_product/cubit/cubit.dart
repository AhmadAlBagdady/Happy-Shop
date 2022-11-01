import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/components/constatnts.dart';
import 'package:test1/else/dio_helper.dart';
import 'package:test1/models/products.dart';
import 'package:test1/show_product/cubit/state.dart';

class NewHomeScreenCubit extends Cubit<NewHomeScreenStates>{
  NewHomeScreenCubit() : super(NewHomeInitialStates());

  static NewHomeScreenCubit get(context)=>BlocProvider.of(context);

  late ProductsModel _productsModel;

  void getlistproduct() {
    emit(NewHomeLoadingStates());
    DioHelper.getData(url: 'products/ar',token: token).then((value) {
      _productsModel = ProductsModel.fromJson(value.data);
      emit(NewHomeSuccessStates(_productsModel));

    }).catchError((error) {
      emit(NewHomeErrorStates());
      print(error.toString());
    });
  }
}