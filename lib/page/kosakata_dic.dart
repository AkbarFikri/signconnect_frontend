import 'package:flutter/material.dart';
import 'package:signconnect_frontend/theme.dart';

class KosaKataDic extends StatelessWidget {
  const KosaKataDic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: appGradient,
      appBar: AppBar(
        title: Text(
          'Perkenalan',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: appWhite,
          ),
        ),
        centerTitle: true,
        backgroundColor: appSoftPurple,
        iconTheme: IconThemeData(color: appWhite),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/image/halo.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios,
                  ),
                  color: appPurple,
                ),
                Column(
                  children: [
                    Text(
                      'Halo',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: appPurple,
                      ),
                    ),
                    const Text(
                      'SIBI',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xff929292),
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                  color: appPurple,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
