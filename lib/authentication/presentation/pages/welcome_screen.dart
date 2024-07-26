import 'package:flutter/material.dart';
import 'package:prototype/animation_constants.dart';
import 'package:prototype/authentication/presentation/pages/login.dart';
import 'package:prototype/authentication/presentation/pages/sign_up_screen.dart';

class InitialWelcomeScreen extends StatelessWidget {
  const InitialWelcomeScreen({super.key});

  void _navigateToLoginScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
      CustomTransitions().rightToLeftSlideTransitionPageBuilder(LoginScreen()),
    );
  }

  void _navigateToSignUpScreen(BuildContext context) {
    Navigator.of(context).pushReplacement(
      CustomTransitions().rightToLeftSlideTransitionPageBuilder(SignUpScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 200,
                width: 200,
                child: Image(
                  image: AssetImage('assets/app-icons/playstore.png'),
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                'We hope your day is great!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 22),
              const Text(
                'Would you like to log in or register?',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 22),
              ElevatedButton(
                onPressed: () {
                  _navigateToLoginScreen(context);
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 48, vertical: 10),
                ),
                child: const Text(
                  'Log in',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _navigateToSignUpScreen(context);
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 48, vertical: 10),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
