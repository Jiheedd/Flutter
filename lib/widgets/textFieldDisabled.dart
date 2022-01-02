
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../palatte.dart';

class textFieldDisabled extends StatelessWidget {
  const textFieldDisabled({
    Key? key,
    required this.hint,
    required this.h,
    required this.w,

  }) : super(key: key);

  final String hint;
  final double w,h;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 11,horizontal: 25),
            fillColor: Colors.white,
            // border: InputBorder.none,

            hintText: hint,
            enabled: false,
            hintStyle: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
