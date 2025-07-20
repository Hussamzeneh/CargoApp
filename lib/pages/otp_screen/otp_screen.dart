import 'package:bloceproject/pages/otp_screen/cubit/cubit.dart';
import 'package:bloceproject/pages/otp_screen/cubit/states.dart';
import 'package:bloceproject/shared/constants/app_routes/app_router.dart';
import 'package:bloceproject/shared/constants/app_routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpScreenCubit(),
      child: BlocConsumer<OtpScreenCubit, OtpScreenStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var otpCubit = OtpScreenCubit.get(context);
          return Scaffold(
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: PinCodeTextField(
                  appContext: context,
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  //backgroundColor: Colors.blue.shade50,
                  enableActiveFill: true,
                  //errorAnimationController: errorController,
                  controller: otpCubit.otpController,
                  onCompleted: (v) async {
                    print("Completed");
                    bool success = await otpCubit.verifyEmail();
                    if(success) {
                      context.go(AppRoutes.loginScreen);
                    }
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                    return true;
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
