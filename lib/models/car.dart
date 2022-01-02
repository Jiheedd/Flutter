class  Car {
  String id;
  String mat1;
  String mat2;
  String matricule;
  String id_user;
  String model;


  Car({
      required this.id,
      required this.mat1,
      required this.mat2,
      required this.matricule,
      required this.id_user,
      required this.model,
});

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
        id: json['id'],
        mat1: json['mat1'],
        mat2: json['mat2'],
        matricule: json['matricule'],
        id_user: json['id_user'],
        model: json['model'],
    );
  }
}