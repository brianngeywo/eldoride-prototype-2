import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prototype/animation_constants.dart';

import 'authentication/presentation/pages/welcome_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        CustomTransitions().rightToLeftSlideTransitionPageBuilder(InitialWelcomeScreen(), context),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              child: const Image(
                image: AssetImage('assets/logo.png'),
              ),
            ),
            const CircularProgressIndicator(
              color: Colors.black,
            ),
            const SizedBox(height: 22),
            const Text(
              'Loading...',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
