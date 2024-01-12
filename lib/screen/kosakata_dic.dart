import 'package:flutter/material.dart';
import 'package:signconnect_frontend/theme.dart';

class KosaKataDic extends StatelessWidget {
  const KosaKataDic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          appSoftPurple,
          appSoftPurple.withOpacity(0.8),
          appSoftPurple.withOpacity(0.58),
          appSoftPurple.withOpacity(0.45),
          appSoftPurple.withOpacity(0.35),
        ], stops: const [
          0.4,
          0.6,
          0.7,
          0.85,
          1
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Image.asset('assets/image/halo.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: appSoftPurple,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: appWhite,
                      size: 26.0,
                    ),
                  ),
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
                    const SizedBox(height: 5.0),
                    const Text(
                      'SIBI',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Color(0xff929292),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: appSoftPurple,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: appWhite,
                      size: 26.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
