import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:Crush_Car/components/textFieldDisabled.dart';
import 'package:Crush_Car/screens/success_find/components/matricule.dart';

import '../../../size_config.dart';
import 'head_icon.dart';

class CarDetails extends StatelessWidget {
  const CarDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      //margin: EdgeInsets.only(top:0,left: 10),
      child: Column(
        children: [
          Matricule(),
          SizedBox(
            width: getProportionateScreenWidth(80),
            height: getProportionateScreenHeight(25),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: getProportionateScreenWidth(30)),
                child: Icon(
                  FontAwesomeIcons.phoneSquareAlt,
                  color: Colors.white,
                  size: SizeConfig.screenWidth * 0.08,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: getProportionateScreenWidth(40)),
                child: textFieldDisabled(
                  w: getProportionateScreenWidth(180),
                  h: getProportionateScreenHeight(40),
                  hint: '55770201',
                  boxColor: Colors.white12,
                  fontSize: SizeConfig.screenWidth * 0.05,
                  inputBorder: InputBorder.none,
                ),
              ),
            ],
          ),
          SizedBox(
            width: getProportionateScreenWidth(80),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: getProportionateScreenWidth(30)),
                child: Icon(
                  FontAwesomeIcons.car,
                  color: Colors.white,
                  size: SizeConfig.screenWidth * 0.08,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: getProportionateScreenWidth(40)),
                child: textFieldDisabled(
                  w: getProportionateScreenWidth(180),
                  h: getProportionateScreenHeight(40),
                  hint: 'GOLF 8',
                  boxColor: Colors.white12,
                  fontSize: SizeConfig.screenWidth * 0.05,
                  inputBorder: InputBorder.none,
                ),
              ),
            ],
          ),
          SizedBox(
            width: getProportionateScreenWidth(40),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: getProportionateScreenWidth(30),bottom: 5),
                child: Icon(
                  FontAwesomeIcons.mapMarkedAlt,
                  color: Colors.white,
                  size: SizeConfig.screenWidth * 0.08,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: getProportionateScreenWidth(40)),
                child: textFieldDisabled(
                  w: getProportionateScreenWidth(180),
                  h: getProportionateScreenHeight(40),
                  hint: 'Tunis',
                  boxColor: Colors.white12,
                  fontSize: SizeConfig.screenWidth * 0.05,
                  inputBorder: InputBorder.none,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
