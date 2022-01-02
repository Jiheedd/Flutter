import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'cars.dart';


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
  State<StatefulWidget> createState() {
    return CarsState();
  }
}
