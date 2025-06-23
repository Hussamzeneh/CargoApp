import 'package:flutter/material.dart';

class CurrentShipments extends StatelessWidget {
  const CurrentShipments({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      height: 150,
      width: 350,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("الالبسة"),
          Text("data"),
        ],
      ),
    );
  }
}
