import 'dart:convert';

class  User {
  String id;
  String pseudo;
  String name;
  String ville;
  String email;
  String password;
  String tel;

  User({
      required this.id,
      required this.pseudo,
      required this.name,
      required this.ville,
      required this.email,
      required this.password,
      required this.tel,
});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        pseudo: json['pseudo'],
        name: json['name'],
        ville: json['ville'],
        email: json['email'],
        password: json['password'],
        tel: json['tel'],
    );
  }
}