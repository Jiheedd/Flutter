import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:Crush_Car/components/textFieldDisabled.dart';

import '../../../size_config.dart';
import 'head_icon.dart';

class Matricule extends StatelessWidget {
  const Matricule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(
              Radius.circular(15)
          ),
          border: Border.all(
            color: Colors.white,
            width: 3,
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: textFieldDisabled(
              w: getProportionateScreenWidth(120),
              h: getProportionateScreenHeight(60),
              hint: '163',
              boxColor: Colors.black,
              fontSize: 38,
              inputBorder: InputBorder.none,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: Image.asset('assets/images/TN.png'),
            width: getProportionateScreenWidth(50),
            height: getProportionateScreenHeight(45),
          ),
          Container(
            child: textFieldDisabled(
              w: getProportionateScreenWidth(120),
              h: getProportionateScreenHeight(60),
              hint: '4454',
              boxColor: Colors.black,
              fontSize: 38,
              inputBorder: InputBorder.none,
            ),
          ),
        ],
      ),
    );
  }
}

