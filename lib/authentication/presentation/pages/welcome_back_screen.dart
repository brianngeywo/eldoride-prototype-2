import 'dart:async';

import 'package:flutter/material.dart';

import '../../../ride_booking/presentation/pages/homescreen.dart';

class WelcomeBackScreen extends StatefulWidget {
  final String userName;

  WelcomeBackScreen({super.key, required this.userName});

  @override
  State<WelcomeBackScreen> createState() => _WelcomeBackScreenState();
}

class _WelcomeBackScreenState extends State<WelcomeBackScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Welcome ${widget.userName},\nIt\'s always good to see you back!',
            style: const TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
