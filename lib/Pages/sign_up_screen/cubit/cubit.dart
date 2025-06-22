import 'package:bloceproject/Pages/sign_up_screen/cubit/states.dart';
import 'package:bloceproject/Pages/sign_up_screen/sign_up.dart';
import 'package:bloceproject/shared/constants/user_text_controllers.dart';
import 'package:bloceproject/shared/constants/user_text_validators.dart';
import 'package:bloceproject/shared/dio_helper/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreenCubit extends Cubit<SignUpScreenStates>{
  SignUpScreenCubit() : super(SignUpScreenInitialState());

  static SignUpScreenCubit get(context) => BlocProvider.of(context);


   UserTextController userTextController = UserTextController();
   UserTextValidators userTextValidators = UserTextValidators();



   SignUp() async {
     var validated =
         userTextValidators.emailValidator.currentState!.validate()&&
     userTextValidators.phoneValidator.currentState!.validate()&&
     userTextValidators.passwordValidator.currentState!.validate();

     if(!validated) return;



     emit(SignUpScreenLoadingState());


     var signUpResponse = await DioHelper.signUp(
       email : userTextController.emailController.text,
       password : userTextController.passwordController.text,
       phone : userTextController.phonController.text
     );


     if(signUpResponse.statusCode==201) {
       emit(SignUpScreenSuccessState());
     }
     else{
       emit(SignUpScreenErrorState("the error message comes form backend"));
     }






   }




}