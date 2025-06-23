import 'package:bloceproject/Pages/home_page_screen/home_page_components/home_page_button.dart';
import 'package:bloceproject/pages/home_page_screen/cubit/sates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/home_page_cubit.dart';
import 'home_page_components/current_shipments/current_shipments.dart';
import 'home_page_components/image_components/list_images.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit()..getAnnouncements(),
      child: BlocConsumer<HomePageCubit, HomePageStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var homepageCubitObject = HomePageCubit.get(context);

          return Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "خدماتنا",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HomePageButton(
                          color: Colors.green,
                          icon: Icons.fire_truck,
                          title: 'اضافة شحنة'),
                      HomePageButton(
                          color: Colors.blue,
                          icon: Icons.qr_code_2,
                          title: 'استلام شحنة'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  if (state is! HomePageLoadingState)
                    ListImages(
                      images: homepageCubitObject.announcementImages,
                    ),
                  CurrentShipments(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
