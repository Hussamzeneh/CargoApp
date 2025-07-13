import 'package:bloceproject/pages/home_page_screen/home_page_components/current_shipments/current_shipment_pipeline.dart';
import 'package:bloceproject/pages/home_page_screen/home_page_components/current_shipments/current_shipment_status.dart';
import 'package:flutter/material.dart';

class CurrentShipmentWidget extends StatelessWidget {
  const CurrentShipmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[50],
        border: Border.all(color: Colors.pink[100]!, width: 2.0),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            CurrentShipmentPipeline(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CurrentShipmentStatus(),
                Text('data'),
              ],
            ),
            Row(
              children: [
                const Expanded(child: SizedBox()),
                Text('ANONM15215454646'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
