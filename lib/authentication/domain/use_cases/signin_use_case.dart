import 'package:firebase_auth/firebase_auth.dart';

import '../../data/repositories/authentication_repository.dart';

class SignInUseCase {
  final AuthenticationRepository _authenticationRepository;

  SignInUseCase(this._authenticationRepository);

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    return await _authenticationRepository.signInWithEmailAndPassword(
        email, password);
  }
}
