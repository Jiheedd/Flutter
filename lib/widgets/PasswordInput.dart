import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../palatte.dart';

class passwordInput extends StatelessWidget {

  passwordInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputAction
  }) : super(key: key);



  final IconData icon;
  final String hint;
  final TextInputAction inputAction;
  bool showPass = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextFormField(
          validator: (value){
            if (value!.isEmpty)
              return "Password can't be empty";
            return null;
          },

          obscureText: showPass,
          decoration: InputDecoration(
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
            hintStyle: kBodyText,
            suffixIcon: IconButton(
              icon: Icon(FontAwesomeIcons.eye),
              iconSize: 15,
              color: Colors.white.withOpacity(0.5),
              onPressed: () {
                showPass = !showPass;
              },
            ),
          ),

          style: kBodyText,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}



