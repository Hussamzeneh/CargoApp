import 'package:bloceproject/pages/add_shipment_screens/invoice_screen/invoice_details_row_component.dart';
import 'package:flutter/material.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Barcode'),
          const Text('Invoice Details'),
          Card(
            child: Column(
              children: [
                InvoiceDetailsRowComponent(
                  icon: Icons.list_alt_rounded,
                  title: 'Invoice Number',
                  value: 'INV-2025-001',
                ),
                InvoiceDetailsRowComponent(
                  icon: Icons.type_specimen_rounded,
                  title: 'shipment type',
                  value: 'electroince',
                ),
                InvoiceDetailsRowComponent(
                  icon: Icons.list_rounded,
                  title: 'number of pieces',
                  value: '3',
                ),
                InvoiceDetailsRowComponent(
                  icon: Icons.timer_outlined,
                  title: 'Shipment wight',
                  value: '5.2 kg',
                ),
                InvoiceDetailsRowComponent(
                  icon: Icons.fire_truck,
                  title: 'delivery price',
                  value: '\$10.00',
                ),
                Divider(),
                InvoiceDetailsRowComponent(
                  icon: Icons.attach_money_rounded,
                  title: 'total amount',
                  value: '\$150.00',
                ),
              ],
            ),
          ),
          const Text('Recipient Information'),
          Card(
            child: Column(
              children: [
                InvoiceDetailsRowComponent(
                  icon: Icons.person,
                  title: 'Recipient name',
                  value: 'Ahmed ali',
                ),
                InvoiceDetailsRowComponent(
                  icon: Icons.phone,
                  title: 'phone number',
                  value: '+963 999 123 456',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
