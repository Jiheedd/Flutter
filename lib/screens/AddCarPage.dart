import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../widgets/InputSimple.dart';
import '../widgets/btnFind.dart';


import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../palatte.dart';
import '../widgets/BackgroundImage.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';


class AddCar extends StatelessWidget {
  const AddCar({Key? key}) : super(key: key);

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
                    height: 190,
                    child: Center(
                      child: Image.asset('lib/img/car-icon.png'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: EdgeInsets.only(top:5,left: 10),
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
                            Container(
                              margin: const EdgeInsets.only(right: 20,left: 20),
                              child: Image.asset('lib/img/tn.png'),
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
                          width: 80,
                          height: 0,
                        ),
                        InputSimple(
                          w: 320,
                          h: 40,
                          hint: 'Mobile number',
                          inputType: TextInputType.number,
                          inputAction: TextInputAction.next,
                        ),
                        SizedBox(
                          width: 80,
                          height: 0,
                        ),
                        InputSimple(
                          w: 320,
                          h: 40,
                          hint: 'Car Modele',
                          inputType: TextInputType.name,
                          inputAction: TextInputAction.next,
                        ),
                        SizedBox(
                          height: 0,
                          width: 40,
                        ),
                        Column(
                          children: <Widget> [
                            Container(
                            margin: const EdgeInsets.all(20),
                              width: 180,
                              height: 38,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16)
                              ),
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.pushNamed(context,'/home');
                                },
                                child: Text(
                                  'Add my Car',
                                  style: TextStyle(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 281,top: 41),
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.arrowLeft),
                      color: Colors.white,
                      iconSize: 24,
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


