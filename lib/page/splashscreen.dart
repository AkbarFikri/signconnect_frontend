// ignore_for_file: annotate_overrides

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
          context, MaterialPageRoute(builder: (context) => const Login()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                    SplashIcon(icon: "assets/icon/splash1.png"),
                    SplashIcon(icon: "assets/icon/splash2.png"),
                    SplashIcon(icon: "assets/icon/splash3.png"),
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: Text(
              'SIGN-APPS',
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: appPrimary,
              ),
            ),
          ),
        ],
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
