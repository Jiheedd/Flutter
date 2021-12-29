import 'package:flutter/material.dart';


Widget imageProfile(){
    return Stack(children: <Widget>[
      CircleAvatar(
        radius: 80.0,
        backgroundImage: AssetImage('lib/img/user.png'),
      ),
      Positioned(
          bottom:20,
          right: 20,
          child: Icon(
            Icons.camera_alt,
            color: Colors.teal,
            size: 28,
          )
        )
      ],
    );
}
