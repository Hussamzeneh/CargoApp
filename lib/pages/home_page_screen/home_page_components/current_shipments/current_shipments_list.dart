import 'package:bloceproject/models/shipment_model.dart';
import 'package:bloceproject/pages/home_page_screen/home_page_components/current_shipments/current_shipment_widget.dart';
import 'package:flutter/material.dart';

class CurrentShipmentsList extends StatelessWidget {
  const CurrentShipmentsList({
    super.key,
    required this.shipments,
  });

  final List<ShipmentModel> shipments;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .5,
      child: ListView.separated(
        itemBuilder: (context, idx) =>
            CurrentShipmentWidget(shipmentModel: shipments[idx]),
        separatorBuilder: (context, idx) => const SizedBox(
          height: 5,
        ),
        itemCount: shipments.length,
      ),
    );
  }
}
