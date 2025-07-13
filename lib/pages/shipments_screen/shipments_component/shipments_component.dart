import 'package:flutter/material.dart';

import 'component_shipmentStatus.dart';

class ShipmentsComponent extends StatelessWidget {
  const ShipmentsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[50],
        border: Border.all(color: Colors.pink[100]!, width: 2.0),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ComponentShipmentstatus(),
                Text('data'),
              ],
            ),
            Text('data'),

          ],
        ),
      ),
    );
  }
}
