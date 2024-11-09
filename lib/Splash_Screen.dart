import 'dart:async';
import 'package:flutter/material.dart';

import 'Welcome_Page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Wait for 3 seconds and then navigate to the main screen
    Timer(
      Duration(seconds: 3),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => WelcomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/airplane.gif'),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            double fontSize = constraints.maxWidth / 20; // Adjust the multiplier as needed
            return Text(
              'Welcome to the App!',
              style: TextStyle(fontSize: fontSize),
            );
          },
        ),
      ),
    );
  }
}
