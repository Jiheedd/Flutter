import 'package:flutter/material.dart';
import 'package:Crush_Car/screens/get_users/components/users.dart';

import '../../../size_config.dart';


class Body extends StatefulWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.blue,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.screenHeight * 0.08),
                  //GetUsersHeader(),
                  //SizedBox(height: getProportionateScreenWidth(10)),
                  //UsersPage(title: "List of users"),

                  SizedBox(height: getProportionateScreenWidth(30)),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }


  @override
  State<StatefulWidget> createState() {
    return UsersState();
  }
}
