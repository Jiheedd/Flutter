import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'UserIcon.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.symmetric(horizontal: 10),
      height: SizeConfig.screenHeight * 0.35,
      width: SizeConfig.screenWidth * 0.9 ,
      child: Center(
          child: UserIcon()
      ),
    );
  }
}
