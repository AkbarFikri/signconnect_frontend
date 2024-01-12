// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:signconnect_frontend/auth/login.dart';
import '../theme.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 35.0, child: Image.asset('assets/icon/logo.png')),
            const SizedBox(width: 5.0),
            Text(
              'SignConnect',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: appPurple,
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                currentPage = page;
              });
            },
            children: [
              buildPage("Halo, Selamat Datang di SignConnect! 🤞🏻✨",
                  "Bersiaplah untuk menjelajahi dunia Bahasa Isyarat dengan petualangan belajar yang menyenangkan."),
              buildPage("Yuk, Booking Translator Dengan Mudah! 🤞🏻✨",
                  "Gunakan fitur Booking Translator untuk mendapatkan bantuan dari Translator Bahasa Isyarat."),
              buildPage("Jadilah Translator dan Sebarkan Kebaikan! 🤞🏻✨",
                  "Dan kamu juga bisa daftar menjadi Translator Bahasa Isyarat untuk membantu teman difabel."),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildPage(String title, String content) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Stack(
          children: [
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Image.asset('assets/image/bg.png'),
              ),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Image.asset('assets/image/intro.png'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Stack(
            children: [
              ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: appPurple,
                ),
              ),
              Column(
                children: [
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 30.0),
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: appWhite,
                      ),
                      child: Column(
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 23.0,
                              fontWeight: FontWeight.bold,
                              color: appBlack,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            content,
                            style: const TextStyle(
                              fontSize: 18.0,
                              color: Color(0xff929292),
                            ),
                          ),
                          const SizedBox(height: 20.0),
                          SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: appPurple,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                elevation: 0,
                              ),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: appWhite,
                                    size: 20.0,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: appWhite,
                                    size: 20.0,
                                  ),
                                  const SizedBox(width: 10.0),
                                  Text(
                                    'Geser untuk mulai...',
                                    style: TextStyle(
                                      color: appWhite,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 5.0,
                          vertical: 20.0,
                        ),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentPage == index
                              ? appWhite
                              : const Color(0xffBCBFE2),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, 0);

    //kiri
    path.quadraticBezierTo(size.width / 4, 25, size.width / 2, 50);
    //kanan
    path.quadraticBezierTo(3 * size.width / 4, 0, size.width, 0);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
