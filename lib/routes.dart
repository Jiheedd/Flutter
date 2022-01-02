import 'package:Crush_Car/screens/add_car/add_car_screen.dart';
import 'package:Crush_Car/screens/get_admins/get_admins_screen.dart';
import 'package:Crush_Car/screens/get_cars/get_cars_screen.dart';
import 'package:Crush_Car/screens/get_choice/get_choice_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:Crush_Car/screens/complete_profile/complete_profile_screen.dart';
import 'package:Crush_Car/screens/forgot_password/forgot_password_screen.dart';
import 'package:Crush_Car/screens/get_users/get_users_screen.dart';
import 'package:Crush_Car/screens/home/home_screen.dart';
import 'package:Crush_Car/screens/login_success/login_success_screen.dart';
import 'package:Crush_Car/screens/not_found/not_found_screen.dart';
import 'package:Crush_Car/screens/otp/otp_screen.dart';
import 'package:Crush_Car/screens/profile/profile_screen.dart';
import 'package:Crush_Car/screens/sign_in/sign_in_screen.dart';
import 'package:Crush_Car/screens/splash/splash_screen.dart';
import 'package:Crush_Car/screens/success_find/success_find_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  NotFoundScreen.routeName: (context) => NotFoundScreen(),
  SuccessFindScreen.routeName: (context) => SuccessFindScreen(),
  GetChoiceScreen.routeName: (context) => GetChoiceScreen(),
  GetUsersScreen.routeName: (context) => GetUsersScreen(),
  GetAdminsScreen.routeName: (context) => GetAdminsScreen(),
  GetCarsScreen.routeName: (context) => GetCarsScreen(),
  AddCarScreen.routeName: (context) => AddCarScreen(),

  ProfileScreen.routeName: (context) => ProfileScreen(),
};
