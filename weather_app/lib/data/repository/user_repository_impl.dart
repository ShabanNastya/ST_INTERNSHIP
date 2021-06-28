import 'dart:collection';
import 'package:weather_app/data/source/network/model/user.dart';
import 'package:weather_app/data/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  HashMap<String, User> _users = HashMap();
  User loginUser;

  @override
  void authUser(User user, Function onSuccessAuth, Function onError) {
    // TODO: implement authUser
    try {
      _users[user.getEmail().toLowerCase()] = user;
      loginUser = user;
      onSuccessAuth();
    } catch (e) {
      onError('Something wrong!');
    }
  }

  @override
  bool contains(String email) {
    // TODO: implement contains
    return _users[email] != null;
  }

  @override
  bool isAuthorizedUser(String email, String password) {
    // TODO: implement isAuthorizedUser
    return _users[email] != null &&
        _users[email.toLowerCase()].getPassword() == password;
  }

  @override
  bool isLoggedIn() {
    // TODO: implement isLoggedIn
    return loginUser != null;
  }

  @override
  User loggedInUser() {
    // TODO: implement loggedInUser
    return loginUser;
  }

  @override
  void login(String email, String password, Function onSuccessLogin,
      Function onError) {
    // TODO: implement login
    try {
      loginUser = _users[email];
      onSuccessLogin();
    } catch (e) {
      onError('Something wrong!');
    }
  }
}
