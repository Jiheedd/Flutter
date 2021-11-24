import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../palatte.dart';

class passwordInputMini extends StatelessWidget {

  passwordInputMini({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputAction
  }) : super(key: key);



  final IconData icon;
  final String hint;
  final TextInputAction inputAction;
  bool showedPass = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        width: 280,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 19),
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
                showedPass = !showedPass;
              },
            ),
          ),
          obscureText: true,
          style: kBodyText,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}



