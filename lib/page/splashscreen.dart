import 'dart:async';
import 'package:flutter/material.dart';
import '../auth/login.dart';
import '../theme.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: List.generate(10, (index) => buildRow()),
          ),
          Center(
            child: Text(
              'SIGN-APPS',
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: appPurple,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRow() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
            6,
            (index) =>
                SplashIcon(icon: "assets/icon/splash${index % 3 + 1}.png")),
      ),
    );
  }
}

class SplashIcon extends StatelessWidget {
  final String icon;

  const SplashIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.0,
      height: 50.0,
      child: Opacity(
        opacity: 0.2,
        child: Image.asset(icon),
      ),
    );
  }
}
