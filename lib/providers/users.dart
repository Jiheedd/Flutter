import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/user.dart';


class UsersPage extends StatefulWidget {
  const UsersPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {

  final String url = 'https://my-json-server.typicode.com/Jiheedd/Flutter/users';
  List<dynamic> _users = [];
  bool loading = true;

  @override
  void initState() {
    getUsers();
    super.initState();
  }

  Future<void> getUsers() async  {
    var response = await http.get(Uri.parse(url));
    if(response.statusCode == 200) {
      final parsedData = jsonDecode(response.body).cast<Map<String, dynamic>>();
      _users = parsedData.map<User>((json) => User.fromJson(json)).toList();
      setState(() {
        loading = !loading;
      });
    } else {
      throw Exception('Failed to load users');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: loading ? waitingScreen() : usersList()
    );
  }

  Widget waitingScreen() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text("Loading data ..."),
          Padding(padding: EdgeInsets.only(bottom: 25)),
          CircularProgressIndicator()
        ],
      ),
    );
  }

  Widget usersList() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _users.length,
        itemBuilder: (context, index) {
          User user = _users[index];
          return Card(
            color: Colors.blueGrey,
            child: Container(
              padding: const EdgeInsets.fromLTRB(12,12,12,10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //Expanded(child: Image.network(user.image)),
                  const Divider(color: Colors.white),
                  Text(
                    user.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    "\$${user.tel.toString()}",
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }


}
