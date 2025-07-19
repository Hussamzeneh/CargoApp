import 'package:bloceproject/Pages/Login_screen/cubit/states.dart';
import 'package:bloceproject/shared/component/customized_botton.dart';
import 'package:bloceproject/shared/component/validated_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/constants/constants.dart';
import 'cubit/cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginScreenCubit(),
      child: BlocConsumer<LoginScreenCubit, LoginScreenStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var loginCubitObject = LoginScreenCubit.get(context);
          var screenHeight = MediaQuery.of(context).size.height;
          return Scaffold(
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Constants.primaryColor,
                  height: screenHeight * 0.3,
                  width: double.infinity,
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: SizedBox()),
                        Text(
                          'Go ahead and set up\nyour account',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          'Sign in-up enjoy the best experience',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  transform: Matrix4.translationValues(0.0, -25.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        ValidatedTextField(
                          icon: Icons.phone,
                          controller: loginCubitObject
                              .userTextController.phoneController,
                          validator: loginCubitObject
                              .userTextValidators.phoneValidator,
                          errorText: 'phone field cannot be empty',
                          hintText: 'phone',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ValidatedTextField(
                          icon: Icons.lock,
                          obscureText: true,
                          controller: loginCubitObject
                              .userTextController.passwordController,
                          validator: loginCubitObject
                              .userTextValidators.passwordValidator,
                          errorText: 'password field cannot be empty',
                          hintText: 'password',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Checkbox(value: false, onChanged: (d) {}),
                            TextButton(
                                onPressed: () {},
                                child: Text('Forget Password?'))
                          ],
                        ),
                        CustomizedButton(
                            title: 'Login',
                            condition: state is! LoginScreenLoadingState,
                            onPressed: () {
                              loginCubitObject.login(
                                context: context,
                              );
                            }),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: const [
                            Expanded(child: Divider()),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text('Or login with'),
                            ),
                            Expanded(child: Divider()),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: [
                //     CircleImageWithBorder(
                //       borderColor: AppColors.primary,
                //       borderWidth: 1,
                //       imagePath:NetworkImage( 'lib/assets/images/apple 1.png'),
                //       size: 56,
                //     ),
                //     SizedBox(width: 20,),
                //     CircleImageWithBorder(
                //       borderColor: AppColors.primary,
                //       borderWidth: 1,
                //       imagePath: NetworkImage( 'lib/assets/images/facebook-app-symbol 1.png'),
                //       size: 56,
                //     ),
                //     SizedBox(width: 20,),
                //     CircleImageWithBorder(
                //       borderColor: AppColors.primary,
                //       borderWidth: 1,
                //       imagePath:NetworkImage( 'lib/assets/images/Frame 4.png'),
                //       size: 56,
                //     ),
                //     SizedBox(height: 30,),
                //
                //   ],
                // ),
                SizedBox(
                  height: 30,
                ),
                // Row(
                //   children: [
                //     SizedBox(
                //       width: 115,
                //     ),
                //     Text(
                //       "Creat An Account ?",
                //       style: TextStyle(color: Color(0xff575757)),
                //     ),
                //     SizedBox(
                //       width: 4,
                //     ),
                //     TextButton(
                //         onPressed: () {
                //           Navigator.push(
                //             context,
                //             MaterialPageRoute(
                //                 builder: (context) =>
                //                     SignUp()), // استبدل SecondPage بالصفحة التي ترغب في الانتقال إليها
                //           );
                //         },
                //         child: Text(
                //           "Sign Up",
                //           style: TextStyle(
                //               color: Color(0xffF83758),
                //               fontWeight: FontWeight.bold),
                //         )),
                //   ],
                // )
              ],
            ),
          );

          // return Scaffold(
          //   backgroundColor: Colors.white,
          //   body: SingleChildScrollView(
          //     child: Column(
          //       children: [
          //         // Top Section with background color and text
          //         Container(
          //           height: MediaQuery.of(context).size.height * 0.3,
          //           // Adjust height as needed
          //           width: double.infinity,
          //           decoration: const BoxDecoration(
          //             color: Color(0xFF5D1049), // Dark purple from the image
          //           ),
          //           padding: EdgeInsets.only(
          //             top: MediaQuery.of(context).padding.top +
          //                 20, // Adjust top padding
          //             left: 20,
          //             right: 20,
          //           ),
          //           alignment: Alignment.topLeft,
          //           // Align text to top-left
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: const [
          //               Text(
          //                 'Go ahead and set up',
          //                 style: TextStyle(
          //                   color: Colors.white,
          //                   fontSize: 28,
          //                   fontWeight: FontWeight.bold,
          //                 ),
          //               ),
          //               Text(
          //                 'your account',
          //                 style: TextStyle(
          //                   color: Colors.white,
          //                   fontSize: 28,
          //                   fontWeight: FontWeight.bold,
          //                 ),
          //               ),
          //               SizedBox(height: 10),
          //               Text(
          //                 'Sign in-up to enjoy the best experience',
          //                 style: TextStyle(
          //                   color: Colors.white70,
          //                   fontSize: 14,
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //         // Bottom Section with login/register form
          //         Container(
          //           width: double.infinity,
          //           // Use negative margin to create the overlap
          //           // margin: const EdgeInsets.only(top: 10),
          //           transform: Matrix4.translationValues(0.0, -50.0, 0.0),
          //           // Overlap the bottom section with the top
          //           padding: const EdgeInsets.symmetric(
          //               horizontal: 25, vertical: 30),
          //           decoration: BoxDecoration(
          //             color: Colors.white,
          //             borderRadius: BorderRadius.circular(30),
          //             boxShadow: [
          //               BoxShadow(
          //                 color: Colors.grey.withOpacity(0.2),
          //                 spreadRadius: 5,
          //                 blurRadius: 7,
          //                 offset:
          //                     const Offset(0, 3), // changes position of shadow
          //               ),
          //             ],
          //           ),
          //           child: Column(
          //             children: [
          //               // Login/Register Toggle
          //               Container(
          //                 decoration: BoxDecoration(
          //                   color: Colors.grey[200],
          //                   borderRadius: BorderRadius.circular(30),
          //                 ),
          //                 child: Row(
          //                   children: [
          //                     Expanded(
          //                       child: GestureDetector(
          //                         onTap: () {},
          //                         child: Container(
          //                           padding: const EdgeInsets.symmetric(
          //                               vertical: 12),
          //                           decoration: BoxDecoration(
          //                             color: true
          //                                 ? Colors.white
          //                                 : Colors.transparent,
          //                             borderRadius: BorderRadius.circular(30),
          //                             boxShadow: true
          //                                 ? [
          //                                     BoxShadow(
          //                                       color: Colors.grey
          //                                           .withOpacity(0.2),
          //                                       spreadRadius: 2,
          //                                       blurRadius: 5,
          //                                       offset: const Offset(0, 3),
          //                                     ),
          //                                   ]
          //                                 : null,
          //                           ),
          //                           alignment: Alignment.center,
          //                           child: Text(
          //                             'Login',
          //                             style: TextStyle(
          //                               // color: _isLoginSelected
          //                               //     ? const Color(0xFF5D1049)
          //                               //     : Colors.grey[600],
          //                               fontWeight: FontWeight.bold,
          //                             ),
          //                           ),
          //                         ),
          //                       ),
          //                     ),
          //                     SizedBox(width: 50,),
          //                     Expanded(
          //                       child: GestureDetector(
          //                         onTap: () {},
          //                         child: Container(
          //                           padding: const EdgeInsets.symmetric(
          //                               vertical: 12),
          //                           decoration: BoxDecoration(
          //                             color: true
          //                                 ? Colors.white
          //                                 : Colors.transparent,
          //                             borderRadius: BorderRadius.circular(30),
          //                             boxShadow: true
          //                                 ? [
          //                                     BoxShadow(
          //                                       color: Colors.grey
          //                                           .withOpacity(0.2),
          //                                       spreadRadius: 2,
          //                                       blurRadius: 5,
          //                                       offset: const Offset(0, 3),
          //                                     ),
          //                                   ]
          //                                 : null,
          //                           ),
          //                           alignment: Alignment.center,
          //                           child: Text(
          //                             'Register',
          //                             style: TextStyle(
          //                               //color: !_isLoginSelected ? const Color(0xFF5D1049) : Colors.grey[600],
          //                               fontWeight: FontWeight.bold,
          //                             ),
          //                           ),
          //                         ),
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //               const SizedBox(height: 30),
          //               // Phone Number Input
          //               const SizedBox(height: 20),
          //               // Password Input
          //
          //               const SizedBox(height: 10),
          //               // Remember me & Forget Password
          //               Row(
          //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                 children: [
          //                   Row(
          //                     children: [
          //                       // Checkbox(
          //                       //   value: _rememberMe,
          //                       //   onChanged: (bool? newValue) {
          //                       //     setState(() {
          //                       //       _rememberMe = newValue ?? false;
          //                       //     });
          //                       //   },
          //                       //   activeColor: const Color(0xFF5D1049),
          //                       // ),
          //                       const Text('Remember me'),
          //                     ],
          //                   ),
          //                   TextButton(
          //                     onPressed: () {
          //                       // TODO: Implement forgot password logic
          //                     },
          //                     child: const Text(
          //                       'Forget Password?',
          //                       style: TextStyle(color: Color(0xFF5D1049)),
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //               const SizedBox(height: 20),
          //               // Login Button
          //               SizedBox(
          //                 width: double.infinity,
          //                 height: 50,
          //                 child: ElevatedButton(
          //                   onPressed: () {},
          //                   style: ElevatedButton.styleFrom(
          //                     backgroundColor: const Color(0xFF5D1049),
          //                     shape: RoundedRectangleBorder(
          //                       borderRadius: BorderRadius.circular(15),
          //                     ),
          //                   ),
          //                   child: const Text(
          //                     'Login',
          //                     style: TextStyle(
          //                       color: Colors.white,
          //                       fontSize: 18,
          //                       fontWeight: FontWeight.bold,
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //               const SizedBox(height: 30),
          //               // Or login with separator
          //               Row(
          //                 children: const [
          //                   Expanded(child: Divider()),
          //                   Padding(
          //                     padding: EdgeInsets.symmetric(horizontal: 10),
          //                     child: Text('Or login with'),
          //                   ),
          //                   Expanded(child: Divider()),
          //                 ],
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // );
        },
      ),
    );
  }
}
