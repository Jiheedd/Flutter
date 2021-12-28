import 'dart:convert';

import 'package:crush_car/auth_provider.dart';
import 'package:crush_car/screens/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../widgets/PasswordInput.dart';
import '../widgets/TextInput.dart';
import '../widgets/RoundedButton.dart';


import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../palatte.dart';
import '../widgets/UserIcon.dart';
import '../widgets/BackgroundImage.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart'; 


class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage>{
  bool showPass = true;
  final _globalKey = GlobalKey<FormState>();
  NetworkHandler networkHandler = NetworkHandler();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  late String errorText;
  bool validate = false;
  bool circular = false;
  final storage = new FlutterSecureStorage();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(image:'lib/img/bg-1.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Form(
                key: _globalKey,
                child: Column(
                  children: [
                    Container(
                      //padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 200,
                      child: Center(
                        child: UserIcon()
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: [
                          Column(
                            // mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              textInput(
                                w: 350,
                                h: 50,
                                icon: FontAwesomeIcons.solidEnvelope,
                                hint: 'Email',
                                inputType: TextInputType.emailAddress,
                                inputAction: TextInputAction.next,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 12.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: TextFormField(
                                    controller: _passwordController,
                                    obscureText: showPass,
                                    validator: (value) {
                                      if (value!.isEmpty)
                                        //print("Password can't be empty");
                                        return "Password can't be empty";
                                      if (value.length < 6)
                                        return "Password must have >=8";
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      /*helperText: "Password length should have >=8",
                                      helperStyle: TextStyle(fontSize: 8, color: Colors.red),*/
                                      contentPadding: const EdgeInsets.symmetric(vertical: 20),
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Icon(
                                          FontAwesomeIcons.lock,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                      hintStyle: kBodyText,
                                      suffixIcon: IconButton(
                                        icon: Icon(showPass? FontAwesomeIcons.eye:FontAwesomeIcons.eyeSlash),
                                        iconSize: 15,
                                        color: Colors.white.withOpacity(0.5),
                                        onPressed: () {
                                          setState(() {
                                            showPass = !showPass;
                                          });
                                        },
                                      ),
                                    ),

                                    style: kBodyText,
                                    textInputAction: TextInputAction.done,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 170,top: 2),
                                child: Text(
                                  'Forgot Password?',
                                  style: kBodyText,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget> [
                              //RoundedButton(buttonText: "LOGIN", routeName: '/home',globalKey: _globalKey),

                                Container(
                                  margin: const EdgeInsets.all(30),
                                  width: 140,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(16)
                                  ),
                                  child: FlatButton(
                                    onPressed: () async {
                                      setState(() {
                                        circular = true;
                                      });
                                      //Login Logic start here
                                      Map<String, String> data = {
                                        "username": _emailController.text,
                                        "password": _passwordController.text,
                                      };
                                      var response =
                                          await networkHandler.post("/user/login", data);

                                      if (response.statusCode == 200 ||
                                          response.statusCode == 201) {
                                        Map<String, dynamic> output = json.decode(response.body);
                                        print(output["token"]);
                                        await storage.write(key: "token", value: output["token"]);
                                        setState(() {
                                          validate = true;
                                          circular = false;
                                        });
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => HomePage(),
                                            ),
                                                (route) => false);
                                      } else {
                                        String output = json.decode(response.body);
                                        setState(() {
                                          validate = false;
                                          errorText = output;
                                          circular = false;
                                        });
                                      }

                                      // login logic End here
                                    },
                                    child: Text(
                                      "LOGIN",
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),

                            ],
                          ),
                        ],
                        ),
                      ),
                    Container(
                      margin: const EdgeInsets.only(right: 280,top: 30),
                      child: IconButton(
                          icon: Icon(FontAwesomeIcons.userPlus),
                          color: Colors.white,
                          iconSize: 21,
                          onPressed: (){
                            Navigator.pushNamed(context, '/register');
                          },
                      ),
                    ),
                    ],
                  ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


