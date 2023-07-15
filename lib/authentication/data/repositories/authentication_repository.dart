// repositories/authentication_repository.dart
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthenticationRepository {
  Future<User?> signUpWithEmailAndPassword(String email, String password);

  Future<User?> signInWithEmailAndPassword(String email, String password);

  Future<void> signOut();

  Future<User?> getCurrentUser();
// Other authentication-related methods
}
