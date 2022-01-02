
import 'package:Crush_Car/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'palatte.dart';

class textFieldEnabled extends StatelessWidget {
  const textFieldEnabled({
    Key? key,
    required this.hint,
    required this.boxColor,
    required this.h,
    required this.w,
    required this.fontSize,
    required this.inputBorder,
    required this.inputType,


  }) : super(key: key);

  final String hint;
  final Color boxColor;
  final double w,h;
  final InputBorder inputBorder;
  final double fontSize;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextField(
          textAlign: TextAlign.center,
          //textAlignVertical: TextAlignVertical.top,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 18,horizontal: 22),
            fillColor: Colors.white,
            // border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.white54, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.white, width: 2),
            ),
            hintText: hint,
            enabled: true,
            hintStyle: TextStyle(
              fontSize: fontSize * 0.9,
              color: Colors.white70,
            ),
          ),
          style: TextStyle(
            fontSize: fontSize ,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textInputAction: TextInputAction.next,
          keyboardType: inputType,
        ),
      ),
    );
  }
}
