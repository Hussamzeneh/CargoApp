import 'package:bloceproject/Pages/home_page_screen/home_page_components/home_page_button.dart';
import 'package:bloceproject/pages/home_page_screen/cubit/sates.dart';
import 'package:bloceproject/pages/home_page_screen/home_page_components/current_shipments/current_shipments_list.dart';
import 'package:bloceproject/shared/constants/app_routes/app_router.dart';
import 'package:bloceproject/shared/constants/app_routes/app_routes.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'cubit/home_page_cubit.dart';
import 'home_page_components/current_shipments/current_shipment_widget.dart';
import 'home_page_components/image_components/list_images.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit()..getShipments(),
      child: BlocConsumer<HomePageCubit, HomePageStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var homeCubit = HomePageCubit.get(context);

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
                  Card(
                    color: Colors.pink[100],
                    elevation: 1.5,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          HomePageButton(
                              color: Colors.green,
                              icon: FontAwesomeIcons.arrowRightArrowLeft,
                              title: 'اضافة شحنة',
                              onTap: () {
                                context.go(AppRoutes.addShipmentScreen);
                              }),
                          SizedBox(
                            width: 5,
                          ),
                          HomePageButton(
                              color: Colors.blue,
                              icon: FontAwesomeIcons.print,
                              title: 'استلام شحنة',
                              onTap: () {}),
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
                                offset: const Offset(1, 3),
                                blurRadius: 7,
                              ),
                            ]),
                        child: const Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Icon(Icons.qr_code_scanner),
                        ),
                      ),
                    ],
                  ),
                  ConditionalBuilder(
                    condition: state is HomePageLoadingState,
                    builder: (context) => const CircularProgressIndicator(),
                    fallback: (context) =>
                        CurrentShipmentsList(shipments: homeCubit.shipments),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
