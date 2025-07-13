import 'package:bloceproject/pages/r/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RComponent extends StatelessWidget {
  const RComponent({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 200,
      child: Column(
        children: [
          Image.network(productModel.image),
          Text(productModel.name),
          Text('\$${productModel.price}'),
          ElevatedButton(
              onPressed: () {},
              child: Container(
                width: 40,
                height: 30,
                child: Center(child: Text("show")),
              ))
        ],
      ),
    );
  }
}
