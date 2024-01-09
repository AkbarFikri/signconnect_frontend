import 'package:flutter/material.dart';
import 'package:signconnect_frontend/custom%20widget/leaderboard.dart';
import 'package:signconnect_frontend/page/kategori_dic.dart';

import '../theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 150.0,
          backgroundColor: appSoftPurple,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Halo Ameera',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: appWhite,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Saatnya menjelajahi Dunia Isyarat!',
                    style: TextStyle(
                      fontSize: 16,
                      color: appWhite,
                    ),
                  )
                ],
              ),
              Center(
                child: Container(
                  width: 53.0,
                  height: 53.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xffE3E5FF),
                    border: Border.all(
                      width: 2.5,
                      color: appWhite,
                    ),
                  ),
                  child: Image.asset('assets/icon/profile.png'),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30.0),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: appSoftPurple,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffC5C9EC),
                          ),
                          child: SizedBox(
                            width: 100.0,
                            height: 100.0,
                            child: Image.asset('assets/image/maskot.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Container(
                          margin: const EdgeInsets.only(right: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Daftar Volunteer',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: appWhite,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Yuk berkontribusi positif untuk teman difabel!',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: appWhite,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  'Yuk mulai belajar',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: appBlack,
                  ),
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const KategoriDic()));
                      },
                      child: const MainFitur(
                        icon: 'assets/icon/dictionary.png',
                        title: 'My\nDictionary',
                      ),
                    ),
                    const MainFitur(
                      icon: 'assets/icon/games.png',
                      title: 'My\nGames',
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Text(
                  'Leaderboard',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: appBlack,
                  ),
                ),
                const SizedBox(height: 15.0),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 170.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: const Color(0xffF9FBFF),
                  ),
                  child: Scrollbar(
                    child: SingleChildScrollView(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 10.0),
                        child: const Column(
                          children: [
                            Leaderboard(
                              no: 'assets/icon/1.png',
                              foto: 'assets/image/maskot.png',
                              nama: 'Azzura Larisa',
                              xp: '90',
                            ),
                            Leaderboard(
                              no: 'assets/icon/2.png',
                              foto: 'assets/image/maskot.png',
                              nama: 'Steven Y. A',
                              xp: '68',
                            ),
                            Leaderboard(
                              no: 'assets/icon/3.png',
                              foto: 'assets/image/maskot.png',
                              nama: 'Kevin Aprilio',
                              xp: '60',
                            ),
                            Leaderboard(
                              no: 4,
                              foto: 'assets/image/maskot.png',
                              nama: 'Laura Aurora',
                              xp: '50',
                            ),
                            Leaderboard(
                              no: 5,
                              foto: 'assets/image/maskot.png',
                              nama: 'Ameera Zaneta',
                              xp: '49',
                            ),
                            Leaderboard(
                              no: 6,
                              foto: 'assets/image/maskot.png',
                              nama: 'Keisya Alvira',
                              xp: '32',
                            ),
                            Leaderboard(
                              no: 7,
                              foto: 'assets/image/maskot.png',
                              nama: 'Davienna A.',
                              xp: '30',
                            ),
                            Leaderboard(
                              no: 8,
                              foto: 'assets/image/maskot.png',
                              nama: 'Azzura Larisa',
                              xp: '22',
                            ),
                            Leaderboard(
                              no: 9,
                              foto: 'assets/image/maskot.png',
                              nama: 'Melya Anjani',
                              xp: '20',
                            ),
                            Leaderboard(
                              no: 10,
                              foto: 'assets/image/maskot.png',
                              nama: 'Faira Agnesia',
                              xp: '12',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class MainFitur extends StatelessWidget {
  final String icon;
  final String title;

  const MainFitur({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 93.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: const Color(0xffE3E5FF),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 57.0,
            child: Image.asset(icon),
          ),
          const SizedBox(width: 8.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: appBlack,
            ),
          ),
        ],
      ),
    );
  }
}
