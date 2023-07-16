import 'package:firebase_auth/firebase_auth.dart';
import 'package:prototype/authentication/data/models/rider_data_model.dart';
import 'package:prototype/authentication/data/remote/data_sources/firebase_auth_data_source.dart';
import 'package:prototype/authentication/data/repositories/authentication_repository.dart';

class FurebaseAuthenticationRepository implements AuthenticationRepository {
  final FirebaseAuth _firebaseAuth;

  FurebaseAuthenticationRepository(this._firebaseAuth);

  @override
  Future<User?> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<User?> signInWithEmailAndPassword(String email, String password) {
    RiderDataModel? rider;
    // TODO: implement signInWithEmailAndPassword
    RemoteAuthDataSource().addRidertpFirestore(rider!);
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
