import 'package:bloceproject/Pages/home_page_screen/home_page_components/home_page_button.dart';
import 'package:bloceproject/pages/home_page_screen/cubit/sates.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cubit/home_page_cubit.dart';
import 'home_page_components/current_shipments/current_shipment_widget.dart';
import 'home_page_components/image_components/list_images.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit(),
      child: BlocConsumer<HomePageCubit, HomePageStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var homepageCubitObject = HomePageCubit.get(context);

          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              leading: Icon(
                Icons.location_on_outlined,
                size: 29,
              ),
              leadingWidth: 60.0,
              actions: const [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Icon(FontAwesomeIcons.bell),
                ),
              ],
              elevation: Theme.of(context).appBarTheme.elevation,
              shape: Theme.of(context).appBarTheme.shape,
            ),
            body: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Text(
                  //   "خدماتنا",
                  //   style: Theme.of(context).textTheme.titleLarge,
                  // ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  Card(
                    color: Colors.pink[100],
                    elevation: 1.5,
                    child: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          HomePageButton(
                              color: Colors.green,
                              icon: FontAwesomeIcons.arrowRightArrowLeft,
                              title: 'اضافة شحنة'),
                          SizedBox(
                            width: 5,
                          ),
                          HomePageButton(
                              color: Colors.blue,
                              icon: FontAwesomeIcons.print,
                              title: 'استلام شحنة'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        //elevation: 1.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            // border: Border.all(color: Colors.red),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset(1, 3),
                                blurRadius: 7,
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Icon(Icons.qr_code_scanner),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  /*if (state is! HomePageLoadingState)
                    ListImages(
                      images: homepageCubitObject.announcementImages,
                    ),*/
                  CurrentShipmentWidget(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
