import 'package:bloceproject/shared/dio_helper/dio_helper.dart';
import 'package:bloceproject/t1/product_model.dart';
import 'package:get/get.dart';

import 'get_products_states.dart';

class ProductsController extends GetxController {
  late Rx<GetProductsStates> state = GetProductsInitialState().obs;
  late RxList<ProductModel> products = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    getProducts();
  }

  void getProducts() async {
    state = GetProductsLoadingState().obs;

    try {
      var response = await DioHelper.getProduct();
      print(response.data);
      for (var p in response.data['data']) {
        products.add(ProductModel.fromJson(p));
      }
      print(products);
      state = GetProductsSuccessState().obs;
    } catch (e, h) {
      print(e);
      print(h);
      state = GetProductsErrorState().obs;
    }
  }
}
