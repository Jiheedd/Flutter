
class User {
  String pseudo;
  String name;
  String ville;
  String email;
  String password;
  num tel;


  User(this.pseudo, this.name, this.ville, this.email, this.password, this.tel,);


  // now create converter

 factory User.fromJson(Map<String,dynamic> responseData){
   return User(
     pseudo: responseData['pseudo'],
     name: responseData['Name'],
     ville : responseData['ville'],
     email: responseData['email'],
     password : responseData['password'],
     tel: responseData['tel'],
   );
 }
}