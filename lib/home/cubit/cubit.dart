import 'package:bloc/bloc.dart';
import 'package:test1/components/constatnts.dart';
import 'package:test1/else/dio_helper.dart';
import 'package:test1/home/cubit/state.dart';
import 'package:test1/models/products.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialStates());

  late ProductsModel _productsModel;

  void getlistproduct() {
    emit(HomeLoadingStates());
    DioHelper.getData(url: 'products/ar',token: token).then((value) {
      _productsModel = ProductsModel.fromJson(value.data);
      emit(HomeSuccessStates(_productsModel));

    }).catchError((error) {
      emit(HomeErrorStates());
      print(error.toString());
    });
  }
}
