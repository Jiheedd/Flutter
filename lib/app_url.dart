class AppUrl {

  static const String baseUrl = 'http://localhost:3000/api';

  static const String users = baseUrl + '/users';

  static const String login = users + '/login';
  static const String register = users + '/signup';
  static const String profile = users + '/profile';


  static const String cars = baseUrl + '/cars';


  static const String admins = baseUrl + '/admins';
}