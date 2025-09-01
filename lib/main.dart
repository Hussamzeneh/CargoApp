import 'package:bloceproject/shared/constants/app_routes.dart';
import 'package:bloceproject/shared/constants/constants.dart';
import 'package:bloceproject/shared/dio_helper/dio_helper.dart';
import 'package:bloceproject/shared/storage/storage_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'pages/add_shipment_screens/cubit/cubit.dart';

void main() async {
  DioHelper.init();
  await StorageHelper.init();
  print(StorageHelper.getUserToken());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddShipmentCubit(),
      child: GetMaterialApp(
        getPages: AppRoutes.routes,
        initialRoute: AppRoutes.initialRoute,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            foregroundColor: Colors.white,
            elevation: 1.5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(
                    20.0), // Apply 30px radius to bottom corners
              ),
            ),
          ),
          fontFamily: 'tajawal',
          primaryColor: Constants.primaryColor,
          // scaffoldBackgroundColor: Colors.white70,
          textTheme: const TextTheme(
            titleLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            bodyMedium: TextStyle(
              fontSize: 14,
            ),
            bodySmall: TextStyle(
              fontSize: 12,
            ),
            labelLarge: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            labelMedium: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold
            )
          ),
        ),

        // home: OtpScreen(),
      ),
    );
  }
}
