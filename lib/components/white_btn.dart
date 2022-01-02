import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';
import 'palatte.dart';

class btnWhite extends StatelessWidget {

  const btnWhite({
    Key? key,
    required this.buttonText,
    required this.routeName

  }) : super(key: key);

  final String buttonText;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: getProportionateScreenWidth(220),
      height: getProportionateScreenWidth(45),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)
      ),
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context,routeName);
        },
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
            fontWeight: FontWeight.w900,
            letterSpacing: 7,
            fontStyle: FontStyle.normal,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
