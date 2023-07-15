import 'package:firebase_auth/firebase_auth.dart';
import 'package:prototype/authentication/data/repositories/authentication_repository.dart';

class SignupUseCase {
  final AuthenticationRepository _authenticationRepository;

  SignupUseCase(this._authenticationRepository);

  Future<User?> signUpWithEmailAndPassword(
      String email, String password) async {
    return await _authenticationRepository.signUpWithEmailAndPassword(
        email, password);
  }
}
