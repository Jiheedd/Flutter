import 'package:Crush_Car/models/car.dart';
import 'package:Crush_Car/screens/get_cars/get_cars_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../../size_config.dart';
import 'add_car.dart';
import 'button.dart';
import 'home_header.dart';



class CarsState extends State{
  var url = Uri.parse("http://192.168.1.12:3000/api/cars");

  Future<Car?> postCar() async{
    //try {
      final response = await http.post(url,body: {
        "_id": "61c8ee00ca0afd1d74e9954e",
        "idcar": "4",
        "mat1": "126",
        "mat2": "8639",
        "Matricule": "126 Tunis 8639",
        "id_user": "4",
        "model": "Volkswagen"
      });
      if (response.statusCode == 201 || response.statusCode == 200){
        final String responseString = response.body;
        return carFromJson(responseString);
      } else {
        return null;
      }
      print(response.body);
    //} catch(er) {}
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.03),
              AddCarHeader(),
              //SizedBox(height: getProportionateScreenWidth(10)),
              AddCar(),
              SizedBox(height: SizeConfig.screenHeight * 0.04),
            Container(
              margin: const EdgeInsets.all(20),
              width: getProportionateScreenWidth(220),
              height: getProportionateScreenWidth(45),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: FlatButton(
                onPressed: () async {
                  Navigator.pushNamed(context,GetCarsScreen.routeName);
                  final Car? car = await postCar();
                },
                child: Text(
                  "Ajouter",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.w900,
                    letterSpacing: 7,
                    fontStyle: FontStyle.normal,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
              SizedBox(height: getProportionateScreenWidth(30)),
            ],
          ),
        ),
      ),
    );

  }

}
