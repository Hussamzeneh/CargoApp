import 'package:bloceproject/Pages/Login_screen/login.dart';
import 'package:bloceproject/Pages/sign_up_screen/cubit/cubit.dart';
import 'package:bloceproject/Pages/sign_up_screen/cubit/states.dart';
import 'package:bloceproject/shared/component/circle_images.dart';
import 'package:bloceproject/shared/component/customized_botton.dart';
import 'package:bloceproject/shared/component/validated_text_field.dart';
import 'package:bloceproject/shared/const/color.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';



class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create:(context) => SignUpScreenCubit(),
      child: BlocConsumer<SignUpScreenCubit,SignUpScreenStates>(
        listener:(context,state){},
        builder:(context, state){
          var signUpCubitObject = SignUpScreenCubit.get(context);
          return Scaffold(
              body: Container(
                padding:EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text( 'Create an\naccont ',style: TextStyle( fontSize:40 ,color: Colors.black,fontWeight: FontWeight.bold)),
                    SizedBox(height: 30,),
                    ValidatedTextField(
                      controller:
                      signUpCubitObject.userTextController.emailController,
                      validator:
                      signUpCubitObject.userTextValidators.emailValidator,
                      errorText: 'email field cannot be empty',
                      hintText: 'email',
                      icon: Icons.email,
                    ),
                    SizedBox(height: 20,),
                    ValidatedTextField(
                     icon: Icons.phone,
                      controller:
                      signUpCubitObject.userTextController.phonController,
                      validator:
                      signUpCubitObject.userTextValidators.phoneValidator,
                      errorText: 'phone field cannot be empty',
                      hintText: 'phone',
                    ),
                    SizedBox(height: 20,),
                    ValidatedTextField(
                      icon: Icons.lock,
                      obscureText: true,
                      controller:
                      signUpCubitObject.userTextController.passwordController,
                      validator:
                      signUpCubitObject.userTextValidators.passwordValidator,
                      errorText: 'password field cannot be empty',
                      hintText: 'password',
                    ),
                    SizedBox(height: 30,),
                    CustomizedButton(
                      title: 'SignUp',
                        condition: state is! SignUpScreenLoadingState,
                        onPressed: () {
                          signUpCubitObject.SignUp();
                        }
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(
                        child: Text(
                          "- OR Continue With -",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xff575757)),
                        )),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleImageWithBorder(
                          borderColor: AppColors.primary,
                          borderWidth: 1,
                          imagePath: NetworkImage('lib/assets/images/apple 1.png'),
                          size: 56,
                        ),
                        SizedBox(width: 20,),
                        CircleImageWithBorder(
                          borderColor: AppColors.primary,
                          borderWidth: 1,
                          imagePath: NetworkImage('lib/assets/images/facebook-app-symbol 1.png'),
                          size: 56,
                        ),
                        SizedBox(width: 20,),
                        CircleImageWithBorder(
                          borderColor: AppColors.primary,
                          borderWidth: 1,
                          imagePath: NetworkImage('lib/assets/images/Frame 4.png') ,
                          size: 56,
                        ),
                        SizedBox(height: 30,),

                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        SizedBox(
                          width: 115,
                        ),
                        Text(
                          "I Already Have an Account ?",
                          style: TextStyle(color: Color(0xff575757)),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LoginScreen()), // استبدل SecondPage بالصفحة التي ترغب في الانتقال إليها
                              );
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Color(0xffF83758),
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    )


                  ],
                ),
              ),

          );

        } ,
      ),
    ) ;
  }
}
