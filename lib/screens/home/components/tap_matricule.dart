import 'package:flutter/material.dart';
import 'package:Crush_Car/components/InputSimple.dart';

import '../../../size_config.dart';
import 'head_icon.dart';

class TapMatricule extends StatelessWidget {
  const TapMatricule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(15), 
          vertical: getProportionateScreenWidth(8)
      ),
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
          borderRadius: BorderRadius.all(
              Radius.circular(15)
          ),
          border: Border.all(
            color: Colors.white,
            width: 3,
          )
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InputSimple(
                hint: 'Left Side',
                inputType: TextInputType.number,
                inputAction: TextInputAction.next,
              ),
              Container(
                //padding: const EdgeInsets.symmetric(horizontal: 10),
                //height: SizeConfig.screenHeight * 0.5,
                child: Center(
                    child: SetIcon(urlImage: 'assets/images/TN.png',)
                ),
              ),
              InputSimple(
                hint: 'Right Side',
                inputType: TextInputType.number,
                inputAction: TextInputAction.next,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
