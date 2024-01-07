import 'package:flutter/material.dart';

import '../theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appPrimary,
      ),
      body: const Center(
        child: Text(
          "Home Sementara",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
