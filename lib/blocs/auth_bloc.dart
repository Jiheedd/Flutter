

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:Crush_Car/blocs/auth_events.dart';
import 'package:Crush_Car/blocs/auth_state.dart';
import 'package:Crush_Car/repository/auth_repo.dart';

class AuthBloc extends Bloc<AuthEvents, AuthState> {
  AuthRepository repo ;
  AuthBloc(AuthState initialState, this.repo) : super(initialState);

  @override
  Stream<AuthState> mapEventToState(AuthEvents event) async* {
    var pref = await SharedPreferences.getInstance();
    if (event is StartEvent) {
      yield LoginInitState();
    } else if (event is LoginButtonPressed) {
      yield LoginLoadingState();
      var data = await repo.login(event.email, event.password);

      pref.setString("key", data['id']);
      pref.setString("email", data['email']);
      pref.setString("password", data['password']);

      yield UserLoginSuccessState();

    } else {
      yield LoginErrorState(message: "Auth Error");
    }
  }

}