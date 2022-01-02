import 'package:Crush_Car/components/textFieldEnabled.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:Crush_Car/screens/add_car/components/matricule.dart';

import '../../../size_config.dart';

class AddCar extends StatelessWidget {
  const AddCar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.only(top:5,left: 10),
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
                  FontAwesomeIcons.car,
                  color: Colors.white,
                  size: SizeConfig.screenWidth * 0.09,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: getProportionateScreenWidth(40)),
                child: textFieldEnabled(
                  w: getProportionateScreenWidth(200),
                  h: getProportionateScreenHeight(40),
                  hint: 'Car name (exp: GOLF 6)',
                  boxColor: Colors.white12,
                  fontSize: SizeConfig.screenWidth * 0.04,
                  inputBorder: InputBorder.none,
                  inputType: TextInputType.name,
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
                  size: SizeConfig.screenWidth * 0.09,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: getProportionateScreenWidth(40)),
                child: textFieldEnabled(
                  w: getProportionateScreenWidth(200),
                  h: getProportionateScreenHeight(40),
                  hint: 'Zone (exp: Monastir)',
                  boxColor: Colors.white12,
                  fontSize: SizeConfig.screenWidth * 0.04,
                  inputBorder: InputBorder.none,
                  inputType: TextInputType.name,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
