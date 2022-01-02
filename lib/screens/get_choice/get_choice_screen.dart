import 'package:flutter/material.dart';
import 'package:Crush_Car/components/coustom_bottom_nav_bar.dart';
import 'package:Crush_Car/enums.dart';

import 'components/body.dart';

class GetChoiceScreen extends StatelessWidget {
  static String routeName = "/get_choice";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.get_api),
    );
  }
}
