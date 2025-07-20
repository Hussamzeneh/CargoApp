import 'package:bloceproject/Pages/Login_screen/login.dart';
import 'package:bloceproject/pages/home_page_screen/home_page.dart';
import 'package:bloceproject/pages/notifications_screen/notifications_screen.dart';
import 'package:bloceproject/pages/otp_screen/otp_screen.dart';
import 'package:bloceproject/pages/sign_up_screen/sign_up.dart';
import 'package:bloceproject/shared/constants/app_routes/app_routes.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRoutes = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.defaultRoute,
      builder: (context, state) => const SignUp(),
    ),
    GoRoute(
      path: AppRoutes.loginScreen,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.signUpScreen,
      builder: (context, state) => const SignUp(),
    ),
    GoRoute(
      path: AppRoutes.homeScreen,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: AppRoutes.otpScreen,
      builder: (context, state) => const OtpScreen(),
    ),
    GoRoute(
      path: AppRoutes.notificationsScreen,
      builder: (context, state) => const NotificationsScreen(),
    ),
  ],
);
