import 'package:flutter/material.dart';

import '../../../size_config.dart';

import 'tap_matricule.dart';
import 'home_header.dart';
import 'find_button.dart';

class Body extends StatelessWidget {
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
                  HomeHeader(),
                  //SizedBox(height: getProportionateScreenWidth(10)),
                  TapMatricule(),
                  //Categories(),
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
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
