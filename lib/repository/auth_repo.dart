import 'dart:convert';

import 'package:http/http.dart' as http;


class AuthRepository {

  login(String email, String password) async {
    var url = Uri.parse("http://192.168.1.12:3000/api/users/login");
    var res = await http.post(
        url,
        headers: {},
        body: {
          "email": email,
          "password": password
        });
    final data = json.decode(res.body);

    if (data['email'] == "dali@dali.com") {
      return data;
    } else {
      return "auth probleme";
    }
    }
}