import 'package:bloceproject/Pages/sign_up_screen/cubit/states.dart';
import 'package:bloceproject/Pages/sign_up_screen/sign_up.dart';
import 'package:bloceproject/shared/component/show_toast.dart';
import 'package:bloceproject/shared/constants/user_text_controllers.dart';
import 'package:bloceproject/shared/constants/user_text_validators.dart';
import 'package:bloceproject/shared/dio_helper/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreenCubit extends Cubit<SignUpScreenStates> {
  SignUpScreenCubit() : super(SignUpScreenInitialState());

  static SignUpScreenCubit get(context) => BlocProvider.of(context);

  UserTextController userTextController = UserTextController();
  UserTextValidators userTextValidators = UserTextValidators();

  signUp({
    required BuildContext context,
  }) async {
    var validated =
        userTextValidators.emailValidator.currentState!.validate() &&
            userTextValidators.phoneValidator.currentState!.validate() &&
            userTextValidators.passwordValidator.currentState!.validate();

    if (!validated) return;

    emit(SignUpScreenLoadingState());

    try {
      var signUpResponse = await DioHelper.signUp(
          name: userTextController.nameController.text,
          email: userTextController.emailController.text,
          password: userTextController.passwordController.text,
          phone: userTextController.phoneController.text);
      print(signUpResponse.data);
      if (signUpResponse.statusCode == 200) {
        emit(SignUpScreenSuccessState(signUpResponse.data['message']));
      } else {
        emit(SignUpScreenErrorState(signUpResponse.data['message']));
      }
    } catch (e) {
      print(e.toString());
      emit(SignUpScreenErrorState("the error message comes form backend"));
    }
  }
}
