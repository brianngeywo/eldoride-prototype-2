import 'package:flutter/material.dart';
import 'package:prototype/animation_constants.dart';
import 'package:prototype/authentication/presentation/controller/signup_controller.dart';
import 'package:prototype/authentication/presentation/pages/login.dart';
import 'package:remixicon/remixicon.dart';

import '../../../homescreen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key, this.signupController});

  final SignupController? signupController;

  @override
  Widget build(BuildContext context) {
    _navigateToLoginScreen(BuildContext context) {
      Navigator.pushReplacement(
        context,
        CustomTransitions()
            .rightToLeftSlideTransitionPageBuilder(LoginScreen()),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 200,
                  width: 200,
                  child: Image(
                    image: AssetImage('assets/logo.png'),
                  ),
                ),
                const Text(
                  'Create an Account',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Full Name',
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Confirm Password',
                  ),
                ),
                const SizedBox(height: 24.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 48, vertical: 10),
                  ),
                  onPressed: () {
                    // Perform sign up logic
                    signupController?.signUpWithEmailAndPassword(
                        'email', 'password');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: const Text('Sign Up'),
                ),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?'),
                    TextButton(
                      onPressed: () {
                        // Navigate to the login screen
                        _navigateToLoginScreen(context);
                      },
                      child: const Text('Log In'),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                const Center(
                  child: Text(
                    'Or sign up with',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        // Perform Google sign up logic
                      },
                      icon: const Icon(Remix.google_fill),
                      label: const Text('Google'),
                    ),
                    const SizedBox(width: 16.0),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: () {
                        // Perform Facebook sign up logic
                      },
                      icon: const Icon(Icons.facebook),
                      label: const Text('Facebook'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
