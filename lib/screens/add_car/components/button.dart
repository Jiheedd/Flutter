import 'package:Crush_Car/screens/get_cars/get_cars_screen.dart';
import 'package:flutter/material.dart';
import 'package:Crush_Car/components/white_btn.dart';

import '../../../size_config.dart';


class add_button extends StatelessWidget {
  const add_button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: SizeConfig.screenHeight * 0.1,
      child: Center(
          child: btnWhite(buttonText: "SAVE", routeName: GetCarsScreen.routeName)
      ),

    );
  }
}
