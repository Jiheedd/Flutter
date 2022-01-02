import 'package:crush_car/widgets/imageProfil.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/PasswordInputMini.dart';
import '../widgets/TextInputMini.dart';
import '../widgets/RoundedButtonMini.dart';


import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../palatte.dart';
import '../widgets/UserIconMini.dart';
import '../widgets/BackgroundImage.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(image: 'lib/img/bg-1.png',),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    //padding: const EdgeInsets.symmetric(horizontal: 10),
                    width: 115,
                    height: 140,
                    child: Center(
                        child: imageProfile(),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: [
                        Column(
                          // mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            textInputMini(
                              icon: FontAwesomeIcons.solidEnvelope,
                              hint: 'Full name',
                              inputType: TextInputType.name,
                              inputAction: TextInputAction.next,
                              w: 280,
                              h: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                textInputMini(
                                  icon: FontAwesomeIcons.solidEnvelope,
                                  hint: 'Pseudo',
                                  inputType: TextInputType.name,
                                  inputAction: TextInputAction.next,
                                  w: 150,
                                  h:50,
                                ),
                                textInputMini(
                                  icon: FontAwesomeIcons.solidEnvelope,
                                  hint: 'Ville',
                                  inputType: TextInputType.name,
                                  inputAction: TextInputAction.next,
                                  w: 120,
                                  h: 50,
                                ),
                              ],
                            ),

                            textInputMini(
                              icon: FontAwesomeIcons.solidEnvelope,
                              hint: 'Email',
                              inputType: TextInputType.emailAddress,
                              inputAction: TextInputAction.next,
                              w: 280,
                              h: 50,
                            ),
                            passwordInputMini(
                              icon: FontAwesomeIcons.lock,
                              hint: 'Password',
                              inputAction: TextInputAction.done,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget> [
                            RoundedButtonMini(buttonText: "SAVE",routeName: '/addCar',),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 281,top: 24),
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.arrowLeft),
                      color: Colors.white,
                      iconSize: 24,
                      onPressed: (){
                        Navigator.pushNamed(context, '/login');
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


