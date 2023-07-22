import 'package:flutter/material.dart';
import 'package:prototype/animation_constants.dart';
import 'package:prototype/authentication/presentation/pages/login.dart';
import 'package:prototype/authentication/presentation/pages/sign_up_screen.dart';

class InitialWelcomeScreen extends StatelessWidget {
  InitialWelcomeScreen({super.key});

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
                  Navigator.pushReplacement(
                    context,
                    CustomTransitions().sizeTransitionPageRouteBuilder(LoginScreen(), context),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 10),
                ),
                child: const Text(
                  'Log in',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    CustomTransitions().slideTransitionPageRouteBuilder(SignUpScreen(), context),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 10),
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
