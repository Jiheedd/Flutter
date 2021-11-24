import 'package:flutter/cupertino.dart';

class UserIcon extends StatelessWidget {
  const UserIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('lib/img/user.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
      width: 125 ,
      height: 125,
    );
  }
}
