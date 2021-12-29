import 'package:crush_car/widgets/textFieldDisabled.dart';
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


class SuccessFind extends StatelessWidget {
  const SuccessFind({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(image: 'lib/img/bg-carfound.png',),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    //padding: const EdgeInsets.symmetric(horizontal: 10),
                    width: 100,
                    height: 120,
                    margin: EdgeInsets.only(top: 25,bottom: 10),
                    child: Center(
                      child: Image.asset('lib/img/success-btn.png'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: EdgeInsets.only(top:0,left: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                              Container(
                                margin: const EdgeInsets.only(left: 30,top: 5),
                                width: 80,
                                height: 60,
                                child: TextField(
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    // border: InputBorder.none,

                                    hintText: '163',
                                    enabled: false,
                                    hintStyle: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            Container(
                              margin: const EdgeInsets.only(right: 15),
                              child: Image.asset('lib/img/tn.png'),
                              width: 50,
                              height: 45,
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 25,top: 5),
                              width: 70,
                              height: 60,
                              child: TextField(
                                decoration: InputDecoration(
                                  //contentPadding: const EdgeInsets.only(left: 20,top: 11),
                                  fillColor: Colors.white,
                                  // border: InputBorder.none,

                                  hintText: '4437',
                                  enabled: false,
                                  hintStyle: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 80,
                          height: 0,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Icon(
                                FontAwesomeIcons.phoneSquareAlt,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 50),
                              child: textFieldDisabled(
                                w: 180,
                                h: 40,
                                hint: '55770201',
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 80,
                          height: 0,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Icon(
                                FontAwesomeIcons.car,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 50),
                              child: textFieldDisabled(
                                w: 180,
                                h: 40,
                                hint: 'GOLF 8',
                              ),
                            ),
                          ],
                        ),
                        /*textFieldDisabled(
                          w: 320,
                          h: 40,
                          hint: 'Golf 8',
                          inputType: TextInputType.name,
                          inputAction: TextInputAction.next,
                        ),*/
                        SizedBox(
                          height: 0,
                          width: 40,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20,bottom: 5),
                              child: Icon(
                                FontAwesomeIcons.mapMarkedAlt,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 50),
                              child: textFieldDisabled(
                                w: 180,
                                h: 40,
                                hint: 'Tunis',
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget> [
                            Container(
                              margin: const EdgeInsets.only(left: 20, top: 25),
                              width: 120,
                              height: 37,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(24)
                              ),
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.pushNamed(context,'/home');
                                },
                                child: Text(
                                  'Return',
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
                    margin: const EdgeInsets.only(right: 250,top: 33),
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.comment),
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


