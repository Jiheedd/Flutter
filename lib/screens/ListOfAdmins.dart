import '../providers/admins.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/InputSimple.dart';
import '../widgets/btnFind.dart';


import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../palatte.dart';
import '../widgets/BackgroundImage.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';


class ListOfAdmins extends StatelessWidget {
  const ListOfAdmins({Key? key}) : super(key: key);

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
                  Center(
                    child: Container(
                      //padding: const EdgeInsets.symmetric(horizontal: 10),
                      width: 350,
                      height: 550,
                      margin: EdgeInsets.only(top: 45,bottom: 8, left: 25),
                      child: Center(
                        child: AdminsPage(title: "List of admins")
                      ),
                    ),
                  ),


                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 150),
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.solidUser),
                          color: Colors.white70,
                          iconSize: 35,
                          onPressed: (){
                            Navigator.pushNamed(context, '/listUser');
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 40),
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.carAlt),
                          color: Colors.white70,
                          iconSize: 35,
                          onPressed: (){
                            Navigator.pushNamed(context, '/listCar');
                          },
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 350,top: 18),
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.home),
                      color: Colors.black,
                      iconSize: 18,
                      onPressed: (){
                        Navigator.pushNamed(context, '/success');
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

