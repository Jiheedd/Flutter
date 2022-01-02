import 'package:Crush_Car/screens/success_find/success_find_screen.dart';
import 'package:flutter/material.dart';
import 'package:Crush_Car/components/white_btn.dart';
import 'package:Crush_Car/screens/login_success/login_success_screen.dart';
import 'package:Crush_Car/screens/not_found/not_found_screen.dart';

import '../../../size_config.dart';


class find_btn extends StatelessWidget {
  const find_btn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: SizeConfig.screenHeight * 0.1,
      child: Center(
          child: btnWhite(buttonText: "FIND", routeName: SuccessFindScreen.routeName)
      ),

    );
  }
}
