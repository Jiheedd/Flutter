
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../palatte.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.routeName,
    required this.buttonText,
    required this.globalKey,

  }) : super(key: key);

  final String buttonText;
  final String routeName;
  final String globalKey;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      },
      child: Container(
        margin: const EdgeInsets.all(30),
        width: 140,
        decoration: BoxDecoration(
            color: Colors.blue,
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
                color: Colors.white,
              ),
          ),
        ),
      ),
    );
  }
}
