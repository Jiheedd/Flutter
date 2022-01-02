import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class CarsState extends State{
  var url = Uri.parse("http://192.168.1.12:3000/api/cars");

  getCars() async{
    var res = await http.get(url);
    if (res.statusCode == 200) {
      var jsonObj = json.decode(res.body);
      return jsonObj;
    }
  }

  void postCar() async{
    try{
      final response = await http.post(url,body: {
        "_id": "61c8ee00ca0afd1d74e9954e",
        "idcar": "4",
        "mat1": "126",
        "mat2": "8639",
        "Matricule": "126 Tunis 8639",
        "id_user": "4",
        "model": "Volkswagen"
      });
      print(response.body);
    } catch(er) {}
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of cars"),
        backgroundColor: Colors.blueAccent,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
      ),
      body: Center(
        child: FutureBuilder(
          future: getCars(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.data != null) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index){
                  return Card(
                    elevation: 4,
                    child: ListTile(
                      title: Text(snapshot.data[index]['Matricule']),
                      subtitle: Text(snapshot.data[index]['model']),
                    ),
                  );
                },
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );

  }

}
