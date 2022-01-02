import 'package:flutter/material.dart';

import '../../../size_config.dart';

import 'notfound_header.dart';
import 'button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.red,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.25),
                  NotFoundHeader(),
                  //SizedBox(height: getProportionateScreenWidth(10)),
                  //Categories(),
                  SizedBox(height: SizeConfig.screenHeight * 0.15),
                  return_btn(),
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
