import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class MySplash extends StatefulWidget {
  const MySplash({super.key});

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: const Home(),
      title: const Text('Sentiment Analysis',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
              color: Colors.white)),
      image: const Image(image: AssetImage('assets/theater.png')),
      gradientBackground: const LinearGradient(
          colors: [Color(0xFFe100ff), Color(0xFF8e2de2)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.004, 1]),
    );
  }
}
