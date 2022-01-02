import 'package:Crush_Car/components/textFieldEnabled.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../size_config.dart';

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
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: textFieldEnabled(
                w: getProportionateScreenWidth(100),
                h: getProportionateScreenHeight(60),
                hint: '***',
                boxColor: Colors.black,
                fontSize: SizeConfig.screenWidth * 0.07,
                inputBorder: InputBorder.none,
                inputType: TextInputType.number,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 15,left: 15),
              child: Image.asset('assets/images/TN.png'),
              width: getProportionateScreenWidth(50),
              height: getProportionateScreenHeight(55),
            ),
            Container(
              child: textFieldEnabled(
                w: getProportionateScreenWidth(120),
                h: getProportionateScreenHeight(60),
                hint: '****',
                boxColor: Colors.black,
                fontSize: SizeConfig.screenWidth * 0.07,
                inputBorder: InputBorder.none,
                inputType: TextInputType.number,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


