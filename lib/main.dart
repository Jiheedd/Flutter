import 'package:crush_car/screens/AddCarPage.dart';
import 'package:crush_car/screens/HomePage.dart';
import 'package:crush_car/screens/ListOfAdmins.dart';
import 'package:crush_car/screens/ListOfCars.dart';
import 'package:crush_car/screens/ListOfUsers.dart';
import 'package:crush_car/screens/NotFoundPage.dart';
import 'package:crush_car/screens/SuccessFind.dart';
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

      home: LoginPage(),
      routes: {
        '/login': (BuildContext context) => LoginPage(),
        '/register': (BuildContext context) => const RegisterPage(),
        '/home': (BuildContext context) => const HomePage(),
        '/notFound': (BuildContext context) => const NotFoundPage(),
        '/addCar': (BuildContext context) => const AddCar(),
        '/success': (BuildContext context) => const SuccessFind(),
        '/listUser': (BuildContext context) => const ListOfUsers(),
        '/listAdmin': (BuildContext context) => const ListOfAdmins(),
        '/listCar': (BuildContext context) => const ListOfCars(),
      },
    );
  }
}
