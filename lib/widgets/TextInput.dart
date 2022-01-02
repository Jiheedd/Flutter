
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../palatte.dart';

class textInput extends StatelessWidget {
  const textInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
    required this.h,
    required this.w,

  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final double w,h;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextFormField(

          validator: (value) {
            if (value!.isEmpty)
              return "Email can't be empty";
            if (!value.contains("@"))
              return "Email is Invalid";
            return null;
          },
          decoration: InputDecoration(
              /*helperText: "Email have not be empty",
              helperStyle: TextStyle(fontSize: 8, color: Colors.red),*/
              contentPadding: const EdgeInsets.symmetric(vertical: 20),
              border: InputBorder.none,
              hintText: hint,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  icon,
                  size: 15,
                  color: Colors.white,
                ),
              ),
              hintStyle: kBodyText
          ),
          style: kBodyText,
          keyboardType: inputType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}
