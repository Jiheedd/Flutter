import 'package:flutter/cupertino.dart';

class notFoundIcon extends StatelessWidget {
  const notFoundIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('lib/img/notFoundIcon.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
      width: 125 ,
      height: 125,
    );
  }
}
