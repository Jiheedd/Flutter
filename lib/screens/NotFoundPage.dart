import 'package:flutter/cupertino.dart';

import '../widgets/InputSimple.dart';
import '../widgets/btnFind.dart';


import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../palatte.dart';
import '../widgets/BackgroundImage.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';


class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(image: 'lib/img/notfound.png',),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    //padding: const EdgeInsets.symmetric(horizontal: 10),
                    width: 180,
                    height: 180,
                    margin: EdgeInsets.only(top: 45,bottom: 8, left: 45),
                    child: Center(
                      child: Image.asset('lib/img/notFoundIcon.png'),
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: EdgeInsets.only(top:0,left: 35),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 48,
                          width: 40,
                        ),
                        Column(
                          children: <Widget> [
                            Container(
                              margin: const EdgeInsets.all(20),
                              width: 200,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0),
                                  borderRadius: BorderRadius.circular(25)
                              ),
                              child: FlatButton(
                                onPressed: () {
                                  Navigator.pushNamed(context,'/home');
                                },
                                child: Text(
                                  "Return",
                                  style: TextStyle(
                                    fontSize: 18,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 204,top: 138),
                    child: IconButton(
                      icon: Icon(FontAwesomeIcons.exclamation),
                      color: Colors.red.withOpacity(0),
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


