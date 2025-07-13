// lib/main.dart
import 'package:bloceproject/Pages/Login_screen/login.dart';
import 'package:bloceproject/pages/bottomnavbar.dart';
import 'package:bloceproject/pages/home_page_screen/home_page.dart';
import 'package:bloceproject/pages/r/rabt.dart';
import 'package:bloceproject/pages/settings_screen/settings_screen.dart';
import 'package:bloceproject/pages/shipments_screen/shipments_component/shipments_component.dart';
import 'package:bloceproject/pages/shipments_screen/shipmint_screen.dart';
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
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottomnavbar(),
      );
  }
}
