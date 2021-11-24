import 'package:crush_car/screens/HomePage.dart';
import 'package:flutter/material.dart';


import './screens/RegisterPage.dart';
import './screens/LoginPage.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crush Car',

      home: const LoginPage(),
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        '/register': (BuildContext context) => const RegisterPage(),
        '/home': (BuildContext context) => const HomePage(),
      },
    );
  }
}
