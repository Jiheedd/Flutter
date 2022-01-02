import 'package:flutter/cupertino.dart';
import '../../../size_config.dart';

class SetIcon extends StatelessWidget {
  const SetIcon({Key? key,
    required this.urlImage,
  }) : super(key: key);

  final String urlImage;

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage(urlImage);
    Image image = Image(image: assetImage);
    return Container(
      child: image,
      //width: SizeConfig.screenWidth * 1 ,
      //height: SizeConfig.screenHeight * 1 ,
    );
  }
}
