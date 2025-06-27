import 'package:bloceproject/t1/product_model.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // The background color of the container
        borderRadius: BorderRadius.circular(15), // Optional: rounded corners

        // This is where you define the shadow(s)
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Color of the shadow
            spreadRadius: 5, // How much the shadow should spread
            blurRadius: 7, // How blurred the shadow should be
            offset: const Offset(0, 3), // Offset of the shadow (x, y)
            // Positive x moves shadow right, positive y moves shadow down
          ),
          // You can add more BoxShadows here to create layered shadow effects
          // BoxShadow(
          //   color: Colors.blue.withOpacity(0.2),
          //   blurRadius: 10,
          //   offset: Offset(5, -5),
          // ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Image.network(
              productModel.image!,
              fit: BoxFit.contain,
            )),
            Text(productModel.name),
            Text('\$${productModel.price}'),
            Row(
              children: [
                const Expanded(child: SizedBox()),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('show'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
