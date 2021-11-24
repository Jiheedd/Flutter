import 'package:flutter/cupertino.dart';

import '../widgets/InputSimple.dart';
import '../widgets/btnFind.dart';


import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../palatte.dart';
import '../widgets/BackgroundFind.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundFind(),
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
                        // child: FindCarIcon()
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: EdgeInsets.only(top:35,left: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InputSimple(
                              w: 100,
                              h: 40,
                              hint: 'Left Side',
                              inputType: TextInputType.number,
                              inputAction: TextInputAction.next,
                            ),
                            SizedBox(
                              width: 80,
                              height: 20,
                            ),
                            InputSimple(
                              w: 110,
                              h: 40,
                              hint: 'Right Side',
                              inputType: TextInputType.number,
                              inputAction: TextInputAction.next,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                          width: 40,
                        ),
                        Column(
                          children: <Widget> [
                            btnFind(buttonText: "FIND"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 250,top: 96),
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.userEdit),
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


