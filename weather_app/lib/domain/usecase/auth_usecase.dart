import 'package:weather_app/data/repository/user_repository.dart';
import 'package:weather_app/data/source/network/model/user.dart';

class AuthUseCase {
  UserRepository _userRepository;

  AuthUseCase(UserRepository userRepository) {
    _userRepository = userRepository;
  }

  void authUser(User user, Function onSuccessAuth, Function onError) {
    _userRepository.authUser(user, onSuccessAuth, onError);
  }
}
