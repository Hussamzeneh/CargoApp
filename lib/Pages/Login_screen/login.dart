import 'package:bloceproject/Pages/Login_screen/cubit/cubit.dart';
import 'package:bloceproject/Pages/Login_screen/cubit/states.dart';
import 'package:bloceproject/Pages/sign_up_screen/sign_up.dart';
import 'package:bloceproject/shared/component/circle_images.dart';
import 'package:bloceproject/shared/component/customized_botton.dart';
import 'package:bloceproject/shared/component/validated_text_field.dart';
import 'package:bloceproject/shared/const/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider (
      create:(context) => LoginScreenCubite(),
      child: BlocConsumer<LoginScreenCubite,LoginScreenStates>(
        listener:(context,state){},
        builder:(context, state){
          var loginCubitObject = LoginScreenCubite.get(context);
          return Scaffold(
            body: Container(
              padding:EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text( 'Welcome\nBack ',style: TextStyle( fontSize:40 ,color: Colors.black,fontWeight: FontWeight.bold)),
                  SizedBox(height: 30,),
                  ValidatedTextField(
                    icon: Icons.phone,
                    controller:
                    loginCubitObject.userTextController.phonController,
                    validator:
                    loginCubitObject.userTextValidators.phoneValidator,
                    errorText: 'phone field cannot be empty',
                    hintText: 'phone',
                  ),
                  SizedBox(height: 20,),
                  ValidatedTextField(
                    icon: Icons.lock,
                    obscureText: true,
                    controller:
                    loginCubitObject.userTextController.passwordController,
                    validator:
                    loginCubitObject.userTextValidators.passwordValidator,
                    errorText: 'password field cannot be empty',
                    hintText: 'password',
                  ),
                  SizedBox(height: 30,),
                  CustomizedButton(
                      title: 'Login',
                      condition: state is! LoginScreenLoadingState,
                      onPressed: () {
                      loginCubitObject.Login();
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
                        imagePath:NetworkImage( 'lib/assets/images/apple 1.png'),
                        size: 56,
                      ),
                      SizedBox(width: 20,),
                      CircleImageWithBorder(
                        borderColor: AppColors.primary,
                        borderWidth: 1,
                        imagePath: NetworkImage( 'lib/assets/images/facebook-app-symbol 1.png'),
                        size: 56,
                      ),
                      SizedBox(width: 20,),
                      CircleImageWithBorder(
                        borderColor: AppColors.primary,
                        borderWidth: 1,
                        imagePath:NetworkImage( 'lib/assets/images/Frame 4.png'),
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
                        "Creat An Account ?",
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
                                      SignUp()), // استبدل SecondPage بالصفحة التي ترغب في الانتقال إليها
                            );
                          },
                          child: Text(
                            "Sign Up",
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
