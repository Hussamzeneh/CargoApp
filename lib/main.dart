// lib/main.dart
import 'package:bloceproject/Pages/Login_screen/login.dart';
import 'package:bloceproject/Pages/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloceproject/Pages/sign_up_screen/sign_up.dart';



void main() {
  runApp(MyApp(appRouter: AppRouter(),),);
}

class MyApp extends StatelessWidget {

  final AppRouter appRouter;

  const MyApp({Key? key,required this.appRouter}) :super(key: key);



  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generteRoute,
      );
  }
}
