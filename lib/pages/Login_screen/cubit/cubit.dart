import 'package:bloc/bloc.dart';
import 'package:bloceproject/Pages/Login_screen/cubit/states.dart';
import 'package:bloceproject/Pages/sign_up_screen/cubit/states.dart';
import 'package:bloceproject/Pages/sign_up_screen/sign_up.dart';
import 'package:bloceproject/models/user_model.dart';
import 'package:bloceproject/shared/constants/user_text_controllers.dart';
import 'package:bloceproject/shared/constants/user_text_validators.dart';
import 'package:bloceproject/shared/dio_helper/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreenCubite extends Cubit<LoginScreenStates> {
  LoginScreenCubite() : super(LoginScreenInitialState());

  static LoginScreenCubite get(context) => BlocProvider.of(context);

  UserTextController userTextController = UserTextController();
  UserTextValidators userTextValidators = UserTextValidators();
  late UserModel userModel;

  Login() async {
    var validated =
        userTextValidators.phoneValidator.currentState!.validate() &&
            userTextValidators.passwordValidator.currentState!.validate();

    if (!validated) return;

    emit(LoginScreenLoadingState());

    var loginResponse = await DioHelper.login(
      password: userTextController.passwordController.text,
      phone: userTextController.phonController.text,
    );

    if (loginResponse.statusCode == 201) {
      userModel = UserModel.fromJson(loginResponse.data);
      emit(LoginScreenSuccessState());
    } else {
      emit(LoginScreenErrorState("the error message that comes form backend"));
    }
  }
}
