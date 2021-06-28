import 'package:weather_app/data/source/network/model/user.dart';

class UserRepository {
  bool contains(String email) {}

  bool isLoggedIn() {}

  bool isAuthorizedUser(String email, String password) {}

  void authUser(User user, Function onSuccessAuth, Function onError) {}

  User loggedInUser() {}

  void login(String email, String password, Function onSuccessLogin, Function onError) {}
}
