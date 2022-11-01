import 'package:test1/models/login.dart';
import 'package:test1/models/products.dart';

abstract class NewHomeScreenStates {}

class NewHomeInitialStates extends NewHomeScreenStates{}

class NewHomeSuccessStates extends NewHomeScreenStates{
  final ProductsModel productsModel;

  NewHomeSuccessStates(this.productsModel);
}

class NewHomeLoadingStates extends NewHomeScreenStates{}

class NewHomeErrorStates extends NewHomeScreenStates{}

