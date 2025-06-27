import 'package:bloceproject/t1/controller.dart';
import 'package:bloceproject/t1/get_products_states.dart';
import 'package:bloceproject/t1/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllProducts extends StatelessWidget {
  AllProducts({super.key});

  final productController = Get.put<ProductsController>(ProductsController());

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx( () =>
          productController.state is! GetProductsLoadingState
              ? GridView.builder(
            shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.65,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0
                  ),
                  itemBuilder: (context, index) => ProductWidget(
                    productModel: productController.products[index],
                  ),
            itemCount: productController.products.length,
                )
              : const Center(
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
    );
    // return const Placeholder();
  }
}
