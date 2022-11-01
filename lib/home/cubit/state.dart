import 'package:test1/models/products.dart';

abstract class HomeStates{}

class HomeInitialStates extends HomeStates{}

class HomeSuccessStates extends HomeStates{
  final ProductsModel productsModel;

  HomeSuccessStates(this.productsModel);
}

class HomeLoadingStates extends HomeStates{}

class HomeErrorStates extends HomeStates{}

