import 'package:flutter/cupertino.dart';
import '../../../size_config.dart';

class UserIcon extends StatelessWidget {
  const UserIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/images/avatar.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
      //width: SizeConfig.screenWidth * 1 ,
      //height: SizeConfig.screenHeight * 1 ,
    );
  }
}
