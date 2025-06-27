import 'package:flutter/material.dart';

class CurrentShipmentStatus extends StatelessWidget {
  const CurrentShipmentStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.pink[900],
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(
              Icons.timelapse,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'status',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
