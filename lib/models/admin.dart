class  Admin {
  String id;
  String pseudo;
  String name;
  String image;
  String ville;
  String email;
  String password;
  String tel;

  Admin({
    required this.id,
    required this.pseudo,
    required this.name,
    required this.image,
    required this.ville,
    required this.email,
    required this.password,
    required this.tel,
  });

  factory Admin.fromJson(Map<String, dynamic> json) {
    return Admin(
      id: json['id'],
      pseudo: json['pseudo'],
      name: json['name'],
      image: json['image'],
      ville: json['ville'],
      email: json['email'],
      password: json['password'],
      tel: json['tel'],
    );
  }
}