import 'package:Crush_Car/screens/get_admins/get_admins_screen.dart';
import 'package:Crush_Car/screens/get_cars/get_cars_screen.dart';
import 'package:Crush_Car/screens/get_users/get_users_screen.dart';
import 'package:Crush_Car/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'get_choice_menu.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.2),
          GetChoiceMenu(
            text: "My List of admins",
            icon: FontAwesomeIcons.userShield,
            press: () =>
              Navigator.pushNamed(context, GetAdminsScreen.routeName),
          ),
          GetChoiceMenu(
            text: "My List of users",
            icon: FontAwesomeIcons.userFriends,
            press: () =>
                Navigator.pushNamed(context, GetUsersScreen.routeName),
          ),
          GetChoiceMenu(
            text: "List of cars",
            icon: FontAwesomeIcons.car,
            press: () =>
                Navigator.pushNamed(context, GetCarsScreen.routeName),
          ),

        ],
      ),
    );
  }
}
