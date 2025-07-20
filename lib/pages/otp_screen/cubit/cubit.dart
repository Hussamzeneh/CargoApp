import 'package:bloc/bloc.dart';
import 'package:bloceproject/pages/otp_screen/cubit/states.dart';
import 'package:bloceproject/shared/dio_helper/dio_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtpScreenCubit extends Cubit<OtpScreenStates> {
  OtpScreenCubit() : super(OtpScreenInitialState());

  static OtpScreenCubit get(context) => BlocProvider.of(context);

  TextEditingController otpController = TextEditingController();

  verifyEmail({required String email}) async {
    emit(OtpScreenLoadingState());
    try {
      var response = await DioHelper.verifyEmail(otp: otpController.text, email: email);
      print(response.data);
      if (response.statusCode == 200) {
        emit(OtpScreenSuccessState(response.data['message']));
      } else {
        emit(OtpScreenErrorState(response.data['message']));
      }
    } catch (e) {
      print(e.toString());
      emit(OtpScreenErrorState(e.toString()));
    }
  }
}
