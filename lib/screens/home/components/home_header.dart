import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'head_icon.dart';
import '../../../components/icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        //padding: const EdgeInsets.symmetric(horizontal: 10),
        height: SizeConfig.screenHeight * 0.4,
        child: Center(
            child: SetIcon(urlImage: 'assets/images/target.png',)
        ),
    );
  }
}
