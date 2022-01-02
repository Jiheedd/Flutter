import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/admin.dart';


class AdminsPage extends StatefulWidget {
  const AdminsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AdminsPage> createState() => _AdminsPageState();
}

class _AdminsPageState extends State<AdminsPage> {

  final String url = 'https://my-json-server.typicode.com/Jiheedd/Flutter/admins';
  List<dynamic> _admins = [];
  bool loading = true;

  @override
  void initState() {
    getAdmins();
    super.initState();
  }

  Future<void> getAdmins() async  {
    var response = await http.get(Uri.parse(url));
    if(response.statusCode == 200) {
      final parsedData = jsonDecode(response.body).cast<Map<String, dynamic>>();
      _admins = parsedData.map<Admin>((json) => Admin.fromJson(json)).toList();
      setState(() {
        loading = !loading;
      });
    } else {
      throw Exception('Failed to load admins');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: loading ? waitingScreen() : adminsList()
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

  Widget adminsList() {
    /*return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("DATA OK! ${_courses[3].description}"),
          const Padding(padding: EdgeInsets.only(bottom: 25)),
        ],
      ),
    );*/
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _admins.length,
        itemBuilder: (context, index) {
          Admin admin = _admins[index];
          return Card(
            color: Colors.blueGrey,
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(child: Image.network(admin.image)),
                  const Divider(color: Colors.white),
                  Text(
                    admin.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    "\$${admin.tel.toString()}",
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
