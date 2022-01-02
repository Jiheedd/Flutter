
import 'package:Crush_Car/screens/add_car/components/post_car_state.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';


class Body extends StatefulWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.blue,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  //SizedBox(height: getProportionateScreenWidth(10)),
                  //UsersPage(title: "List of users"),

                  SizedBox(height: getProportionateScreenWidth(30)),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }


  @override
  State<StatefulWidget> createState() => CarsState();
  
}










/*import 'package:flutter/material.dart';

import '../../../size_config.dart';

import 'add_car.dart';
import 'home_header.dart';
import 'button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.green,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //SizedBox(height: SizeConfig.screenHeight * 0.02),
                  AddCarHeader(),
                  //SizedBox(height: getProportionateScreenWidth(10)),
                  AddCar(),
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  add_button(),
                  SizedBox(height: getProportionateScreenWidth(30)),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

 */
