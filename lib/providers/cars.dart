import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../models/car.dart';


class CarsPage extends StatefulWidget {
  const CarsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CarsPage> createState() => _CarsPageState();
}

class _CarsPageState extends State<CarsPage> {

  final String url = 'https://my-json-server.typicode.com/Jiheedd/Flutter/cars';
  List<dynamic> _cars = [];
  bool loading = true;

  @override
  void initState() {
    getCars();
    super.initState();
  }

  Future<void> getCars() async  {
    var response = await http.get(Uri.parse(url));
    if(response.statusCode == 200) {
      final parsedData = jsonDecode(response.body).cast<Map<String, dynamic>>();
      _cars = parsedData.map<Car>((json) => Car.fromJson(json)).toList();
      setState(() {
        loading = !loading;
      });
    } else {
      throw Exception('Failed to load cars');
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
    /*return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("DATA OK! ${_users[3].description}"),
          const Padding(padding: EdgeInsets.only(bottom: 25)),
        ],
      ),
    );
*/

    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _cars.length,
        itemBuilder: (context, index) {
          Car car = _cars[index];
          return Card(
            color: Colors.blueGrey,
            child: Container(
              padding: const EdgeInsets.fromLTRB(12,12,12,10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //Expanded(child: Image.network(admin.image)),
                  const Divider(color: Colors.white),
                  Text(
                    car.matricule,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    "\$${car.model.toUpperCase()}",
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
