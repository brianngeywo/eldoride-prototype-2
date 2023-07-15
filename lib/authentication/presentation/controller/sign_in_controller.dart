import 'package:prototype/authentication/domain/use_cases/signin_use_case.dart';

class SignInController {
  final SignInUseCase _signInUseCase;

  SignInController(this._signInUseCase);

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    final user =
        await _signInUseCase.signInWithEmailAndPassword(email, password);
  }
}
