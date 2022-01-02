// To parse this JSON data, do
//
//     final car = carFromJson(jsonString);

import 'dart:convert';

Car carFromJson(String str) => Car.fromJson(json.decode(str));

String carToJson(Car data) => json.encode(data.toJson());

class Car {
  Car({
    required this.id,
    required this.idcar,
    required this.mat1,
    required this.mat2,
    required this.matricule,
    required this.idUser,
    required this.model,
  });

  String id;
  String idcar;
  String mat1;
  String mat2;
  String matricule;
  String idUser;
  String model;

  factory Car.fromJson(Map<String, dynamic> json) => Car(
    id: json["_id"],
    idcar: json["idcar"],
    mat1: json["mat1"],
    mat2: json["mat2"],
    matricule: json["Matricule"],
    idUser: json["id_user"],
    model: json["model"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "idcar": idcar,
    "mat1": mat1,
    "mat2": mat2,
    "Matricule": matricule,
    "id_user": idUser,
    "model": model,
  };
}
