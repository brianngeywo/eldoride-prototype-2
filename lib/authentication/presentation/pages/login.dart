import 'package:flutter/material.dart';
import 'package:prototype/authentication/presentation/controller/sign_in_controller.dart';
import 'package:prototype/authentication/presentation/pages/sign_up_screen.dart';
import 'package:prototype/authentication/presentation/pages/welcome_back_screen.dart';
import 'package:remixicon/remixicon.dart';

import '../../../animation_constants.dart';

class LoginScreen extends StatelessWidget {
  final SignInController? signInController;

  LoginScreen({super.key, this.signInController});

  TextEditingController? emailController;
  TextEditingController? passwordController;

  @override
  Widget build(BuildContext context) {
    _navigateToSignUpScreen(BuildContext context) {
      Navigator.pushReplacement(
        context,
        CustomTransitions().leftToRightSlideTransitionPageBuilder(SignUpScreen()),
      );
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Center(
              child: SizedBox(
                height: 200,
                width: 200,
                child: Image(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
            ),
            const Center(
              child: Text(
                'Log In to Your Account',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Center(
              child: TextFormField(
                controller: emailController,
                onChanged: (value) {
                  // Perform login logic
                  emailController?.text = value;
                },
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Center(
              child: TextFormField(
                controller: passwordController,
                onChanged: (value) {
                  // Perform login logic
                  passwordController?.text = value;
                },
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  onPrimary: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 10),
                ),
                onPressed: () {
                  // Perform login logic
                  signInController?.signInWithEmailAndPassword(emailController!.text, passwordController!.text);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WelcomeBackScreen(
                                userName: "Emmanuel",
                              )));
                },
                child: const Text('Log In'),
              ),
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                      // Navigate to the sign-up screen
                      _navigateToSignUpScreen(context);
                    },
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            const Center(
              child: Text(
                'Or log in with:',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red.shade800,
                    ),
                    onPressed: () {
                      // Perform Google login logic
                    },
                    icon: const Icon(Remix.google_fill),
                    label: const Text(
                      'Google',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue.shade800,
                    ),
                    onPressed: () {
                      // Perform Facebook login logic
                    },
                    icon: const Icon(Icons.facebook),
                    label: const Text(
                      'Facebook',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
