import 'package:bloceproject/models/shipment_model.dart';
import 'package:bloceproject/pages/home_page_screen/home_page_components/current_shipments/current_shipment_status/status/being_delivered_status.dart';
import 'package:bloceproject/pages/home_page_screen/home_page_components/current_shipments/current_shipment_status/status/waiting_for_driver_status.dart';
import 'package:bloceproject/shared/constants/shipment_status.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';

class CurrentShipmentStatus extends StatelessWidget {
  const CurrentShipmentStatus({
    super.key,
    required this.shipmentModel,
  });

  final ShipmentModel shipmentModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.pink[900],
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ConditionalBuilder(
          condition: shipmentModel.status == ShipmentStatus.pending,
          builder: (context) => const WaitingForDriverStatus(),
          fallback: (context) => const BeingDeliveredStatus(),
        ),
      ),
    );
  }
}
