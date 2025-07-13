import 'package:bloc/bloc.dart';
import 'package:bloceproject/pages/r/cubit/status.dart';
import 'package:bloceproject/pages/r/product_model.dart';
import 'package:bloceproject/shared/dio_helper/dio_helper.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsScreenCubit extends Cubit<ProductsScreenStates> {
  ProductsScreenCubit() : super(ProductsScreenInitialState());

  static ProductsScreenCubit get(context) => BlocProvider.of(context);

  List<ProductModel> products = [];

  getProducts() async {
    emit(ProductsScreenLoadingState());
    print('------');
    try {
      var Products = await DioHelper.getProducts();
      print(Products.data);
      for (var p in Products.data['data']) {
        products.add(ProductModel.fromJson(p));
      }
      print(Products.data);
      print('------');
      emit(ProductsScreenSuccessState());
    } catch (e, h) {
      print(e.toString());
      print(h.toString());
      emit(ProductsScreenErrorState(e.toString()));
    }
  }
}
