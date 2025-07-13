// lib/main.dart
import 'package:bloceproject/Pages/Login_screen/login.dart';
import 'package:bloceproject/pages/home_page_screen/home_page.dart';
import 'package:bloceproject/pages/notifications_screen/notifications_screen.dart';
import 'package:bloceproject/shared/constants/constants.dart';
import 'package:bloceproject/shared/dio_helper/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloceproject/Pages/sign_up_screen/sign_up.dart';

void main() {
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          elevation: 1.5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom:
                  Radius.circular(20.0), // Apply 30px radius to bottom corners
            ),
          ),
        ),
        fontFamily: 'rubik',
        primaryColor: Constants.primaryColor,
        // scaffoldBackgroundColor: Colors.white70,
        textTheme: const TextTheme(
            titleLarge: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            bodyMedium: TextStyle(
              fontSize: 14,
            ),
            bodySmall: TextStyle(
              fontSize: 12,
            )),
      ),
      home: HomePage(),
    );
  }
}
