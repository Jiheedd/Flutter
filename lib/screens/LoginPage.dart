import 'package:crush_car/screens/HomePage.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/PasswordInput.dart';
import '../widgets/TextInput.dart';
import '../widgets/RoundedButton.dart';


import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../palatte.dart';
import '../widgets/UserIcon.dart';
import '../widgets/BackgroundImage.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    //padding: const EdgeInsets.symmetric(horizontal: 10),
                    height: 200,
                    child: Center(
                      child: UserIcon()
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Column(
                          // mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            textInput(
                              w: 280,
                              h: 50,
                              icon: FontAwesomeIcons.solidEnvelope,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                            ),
                            passwordInput(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Password',
                              inputAction: TextInputAction.done,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 170,top: 2),
                              child: Text(
                                'Forgot Password?',
                                style: kBodyText,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget> [
                            RoundedButton(buttonText: "LOGIN", routeName: '/home',),
                          ],
                        ),
                      ],
                      ),
                    ),
                  Container(
                    margin: const EdgeInsets.only(right: 280,top: 28),
                    child: IconButton(
                        icon: Icon(FontAwesomeIcons.userPlus),
                        color: Colors.white,
                        iconSize: 21,
                        onPressed: (){
                          Navigator.pushNamed(context, '/register');
                        },
                    ),
                  ),
                  ],
                ),
            ),
          ),
        ),
      ],
    );
  }
}


