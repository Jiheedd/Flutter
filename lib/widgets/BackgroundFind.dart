import 'package:flutter/material.dart';


class BackgroundFind extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('lib/img/bgFind.png'),
            fit : BoxFit.fill
        ),
      ),
    );
  }
}
