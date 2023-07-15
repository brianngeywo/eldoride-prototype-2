import 'package:firebase_auth/firebase_auth.dart';
import 'package:prototype/authentication/data/repositories/authentication_repository.dart';

class SignupRepository implements AuthenticationRepository {
  final FirebaseAuth _firebaseAuth;

  SignupRepository(this._firebaseAuth);

  @override
  Future<User?> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<User?> signInWithEmailAndPassword(String email, String password) {
    // TODO: implement signInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<User?> signUpWithEmailAndPassword(String email, String password) {
    // TODO: implement signUpWithEmailAndPassword
    throw UnimplementedError();
  }
}
