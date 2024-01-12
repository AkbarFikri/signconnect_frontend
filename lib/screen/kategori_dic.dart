import 'package:flutter/material.dart';
import 'package:signconnect_frontend/custom%20widget/card_dic.dart';
import 'package:signconnect_frontend/screen/list_dic.dart';
import 'package:signconnect_frontend/theme.dart';

class KategoriDic extends StatelessWidget {
  const KategoriDic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbfbfb),
      appBar: AppBar(
        backgroundColor: appSoftPurple,
        iconTheme: IconThemeData(
          color: appWhite,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 175.0,
              color: appSoftPurple,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset('assets/image/belakang.png'),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset('assets/image/depan.png'),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'My Dictionary',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold,
                                  color: appWhite,
                                ),
                              ),
                              const SizedBox(height: 5.0),
                              Text(
                                'Kota kata dasar untuk berkomunikasi sehari-hari.',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  color: appWhite,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Image.asset('assets/image/maskot.png'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Text(
                'Kategori',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: appBlack,
                ),
              ),
            ),
            const CardDic(
              title: 'Alfabet',
              icon: 'assets/image/alfabet.png',
            ),
            const CardDic(
              title: 'Kata Dasar',
              icon: 'assets/image/teman.png',
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListDic(),
                  ),
                );
              },
              child: const CardDic(
                title: 'Perkenalan',
                icon: 'assets/image/halo.png',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
