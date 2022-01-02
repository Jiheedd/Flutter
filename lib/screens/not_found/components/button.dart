import 'package:Crush_Car/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:Crush_Car/components/white_btn.dart';

import '../../../size_config.dart';


class return_btn extends StatelessWidget {
  const return_btn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: SizeConfig.screenHeight * 0.1,
      child: Center(
          child: btnWhite(buttonText: "BACK", routeName: HomeScreen.routeName)
      ),

    );
  }
}
