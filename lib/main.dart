// lib/main.dart
import 'package:bloceproject/Pages/Login_screen/login.dart';
import 'package:bloceproject/Pages/app_router.dart';
import 'package:bloceproject/pages/home_page_screen/home_page.dart';
import 'package:bloceproject/shared/dio_helper/dio_helper.dart';
import 'package:bloceproject/t1/all_products.dart';
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
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      );
  }
}
