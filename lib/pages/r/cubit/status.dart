abstract class ProductsScreenStates{}

class ProductsScreenInitialState extends ProductsScreenStates {}

class ProductsScreenLoadingState extends ProductsScreenStates {}

class ProductsScreenSuccessState extends ProductsScreenStates {}

class ProductsScreenErrorState extends ProductsScreenStates {
  final error ;

  ProductsScreenErrorState(this.error);
}
