import 'package:Crush_Car/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Crush_Car/blocs/auth_bloc.dart';
import 'package:Crush_Car/blocs/auth_state.dart';
import 'package:Crush_Car/repository/auth_repo.dart';
import 'package:Crush_Car/routes.dart';
import 'package:Crush_Car/screens/profile/profile_screen.dart';
import 'package:Crush_Car/screens/splash/splash_screen.dart';
import 'package:Crush_Car/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc(LoginInitState(), AuthRepository()))
      ],
      
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Crush car APP',
        theme: theme(),
        // home: SplashScreen(),
        // We use routeName so that we dont need to remember the name
        initialRoute: HomeScreen.routeName,
        routes: routes,
      ),
    );
  }
}
