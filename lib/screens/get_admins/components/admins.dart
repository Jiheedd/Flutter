import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class AdminsState extends State{

  getAdmins() async{
    var url = Uri.parse("http://192.168.1.12:3000/api/admins");
    var res = await http.get(url);
    if (res.statusCode == 200) {
      var jsonObj = json.decode(res.body);
      return jsonObj;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List of admins"),
        backgroundColor: Colors.blueAccent,
        iconTheme: IconThemeData(
          color: Colors.white
        ),
      ),
      body: Center(
        child: FutureBuilder(
          future: getAdmins(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.data != null) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index){
                  return Card(
                    elevation: 4,
                    child: ListTile(
                      title: Text(snapshot.data[index]['name']),
                      subtitle: Text(snapshot.data[index]['email']),
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
