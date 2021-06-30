import 'package:weather_app/data/repository/user_repository.dart';
import 'package:weather_app/data/source/network/model/user.dart';

class ValidationUseCase {
  UserRepository _userRepository;

  ValidationUseCase(UserRepository userRepository) {
    _userRepository = userRepository;
  }

  void validateRegistration(User user, Function onSuccess, Function onError) {
    if (_userRepository.contains(user.getEmail())) {
      onError('This mail is already auth');
    } else {
      onSuccess();
    }
  }
}