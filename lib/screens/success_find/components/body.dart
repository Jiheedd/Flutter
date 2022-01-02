import 'package:flutter/material.dart';

import '../../../size_config.dart';

import 'car_details.dart';
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
                  SuccessFindHeader(),
                  //SizedBox(height: getProportionateScreenWidth(10)),
                  CarDetails(),
                  //Categories(),
                  SizedBox(height: SizeConfig.screenHeight * 0.04),
                  find_btn(),
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
