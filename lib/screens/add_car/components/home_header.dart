import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'head_icon.dart';
import '../../../components/icon_btn_with_counter.dart';

class AddCarHeader extends StatelessWidget {
  const AddCarHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        //padding: const EdgeInsets.symmetric(horizontal: 10),
        height: SizeConfig.screenHeight * 0.33,
        width: SizeConfig.screenWidth * 0.8,
        child: Center(
            child: SetIcon(urlImage: 'assets/images/car_slash.png',)
        ),
    );
  }
}
