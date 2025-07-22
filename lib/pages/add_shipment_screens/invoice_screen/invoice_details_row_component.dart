import 'package:flutter/material.dart';

class InvoiceDetailsRowComponent extends StatelessWidget {
  const InvoiceDetailsRowComponent({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  final IconData icon;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        Text(title),
        Text(value),
      ],
    );
  }
}
