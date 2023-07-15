import 'package:flutter/material.dart';
import 'package:prototype/authentication/presentation/pages/sign_up_screen.dart';
import 'package:prototype/welcome_back_screen.dart';
import 'package:remixicon/remixicon.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                child: const Image(
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
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Center(
              child: TextFormField(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 48, vertical: 10),
                ),
                onPressed: () {
                  // Perform login logic
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
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
