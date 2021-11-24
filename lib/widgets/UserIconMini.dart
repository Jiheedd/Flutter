import 'package:flutter/cupertino.dart';

class UserIconMini extends StatelessWidget {
  const UserIconMini({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('lib/img/user.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
      width: 100 ,
      height: 100,
    );
  }
}
