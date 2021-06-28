class User {
  String _email;
  String _username;
  String _password;

  User(String email, String username, String password) {
    this._email = email;
    this._username = username;
    this._password = password;
  }

  String getName() {
    return _username;
  }

  String getEmail() {
    return _email;
  }

  String getPassword() {
    return _password;
  }
}
