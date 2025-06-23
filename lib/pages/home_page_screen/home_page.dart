import 'package:bloceproject/Pages/home_page_screen/home_page_components/home_page_button.dart';
import 'package:flutter/material.dart';

import 'home_page_components/image_components/list_images.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar() ,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("خدماتنا"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomePageButton(color: Colors.green, icon: Icons.fire_truck, title: 'اضافة شحنة'),
                SizedBox(width:20 ,),
                HomePageButton(color: Colors.blue, icon: Icons.qr_code_2, title: 'استلام راجع'),
              ],
            ),
            ListImages(),
          ],
        ),
      ),

    );
  }
}
