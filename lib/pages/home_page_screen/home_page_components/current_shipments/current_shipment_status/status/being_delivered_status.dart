import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BeingDeliveredStatus extends StatelessWidget {
  const BeingDeliveredStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.plane,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'قيد التوصيل',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
