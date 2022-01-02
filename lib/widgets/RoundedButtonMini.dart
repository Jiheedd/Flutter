
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../palatte.dart';

class RoundedButtonMini extends StatelessWidget {
  const RoundedButtonMini({
    Key? key,
    required this.buttonText,
    required this.routeName,

  }) : super(key: key);

  final String buttonText;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: 100,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)
      ),
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 13,
              color: Colors.black,
            ),
        ),
      ),
    );
  }
}
