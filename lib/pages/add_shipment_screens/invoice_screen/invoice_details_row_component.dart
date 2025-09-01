import 'package:bloceproject/shared/constants/constants.dart';
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
        Icon(
          icon,
          color: Constants.primaryColor,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '$title: ',
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Text(value, style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.grey[600]),),
      ],
    );
  }
}
