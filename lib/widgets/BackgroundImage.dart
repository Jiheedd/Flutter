import 'package:flutter/material.dart';


class BackgroundImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/img/bg-1.png'),
          fit : BoxFit.fill
        ),
      ),
    );
  }
}
