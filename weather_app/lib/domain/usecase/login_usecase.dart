import 'package:weather_app/data/repository/user_repository.dart';

class LoginUseCase {
  UserRepository _userRepository;

  LoginUseCase(UserRepository userRepository) {
    _userRepository = userRepository;
  }

  void login(String email, String password, Function onSuccessLogin, Function onError) {
    if (_userRepository.contains(email)) {
      if (_userRepository.isAuthorizedUser(email, password)) {
        _userRepository.login(email, password, onSuccessLogin, onError);
      } else {
        onError('wrong password');
      }
    } else {
      onError('non authorization email');
    }
  }
}
