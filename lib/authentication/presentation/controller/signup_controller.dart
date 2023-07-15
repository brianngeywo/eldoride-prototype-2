import '../../domain/use_cases/signup_use_case.dart';

class SignupController {
  SignupUseCase _signupUseCase;

  SignupController(this._signupUseCase);

  Future<void> signUpWithEmailAndPassword(String email, String password) async {
    final user =
        await _signupUseCase.signUpWithEmailAndPassword(email, password);
  }
}
