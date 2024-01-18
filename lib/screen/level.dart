import 'package:flutter/material.dart';
import 'package:signconnect_frontend/theme.dart';

class Level extends StatefulWidget {
  const Level({super.key});

  @override
  State<Level> createState() => _LevelState();
}

class _LevelState extends State<Level> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appSoftPurple,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){}, 
          icon: Image.asset('assets/icon/backlogo.png', scale: 12,),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
          size: 32,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 72,
                width: 72,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: appPurple.withOpacity(0.7),
                    width: 4,
                  )
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    SizedBox(
                      height: 28,
                      child: Image.asset('assets/icon/Star.png'),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const SizedBox(
                      child: Text(
                        "97 Xp",
                         style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffECEEFF),
                          fontWeight: FontWeight.w700,
                         ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 49,
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: double.infinity),
                child: const Wrap(
                  spacing: 32,
                  runSpacing: 16,
                  children: [
                    LevelButton(),
                    LevelButtonNotActive(level: "2"),
                    LevelButtonNotActive(level: "3"),
                    LevelButtonNotActive(level: "4"),
                    LevelButtonNotActive(level: "5"),
                    LevelButtonNotActive(level: "6"),
                    LevelButtonNotActive(level: "7"),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      )
    );
  }
}

class LevelButton extends StatelessWidget {
  const LevelButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      width: 93,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 84,
            width: 84,
            decoration: BoxDecoration(
                color: appPurple,
                borderRadius: BorderRadius.circular(100)
            ),
            child: Center (
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "1",
                    style: TextStyle(
                      fontSize: 48,
                      color: appWhite,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 0,
            child: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                  color: const Color(0xffFCF3E1),
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icon/StarNotFull.png', width: 28,height: 28,),
                ],
              )
            ),
          ),
          Positioned(
            bottom: 8,
            left: 30.5,
            child: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                  color: const Color(0xffFCF3E1),
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icon/StarNotFull.png', width: 28,height: 28,),
                ],
              )
            ),
          ),
          Positioned(
            bottom: 16,
            right: 0,
            child: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                  color: const Color(0xffFCF3E1),
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icon/StarNotFull.png', width: 28,height: 28,),
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}

class LevelButtonNotActive extends StatelessWidget {
  final String level;
  const LevelButtonNotActive({
    super.key,
    required this.level
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      width: 93,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 84,
            width: 84,
            decoration: BoxDecoration(
                color: const Color(0xffB2B7BF),
                borderRadius: BorderRadius.circular(100)
            ),
            child: Center (
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    level,
                    style: const TextStyle(
                      fontSize: 48,
                      color: Color(0xffD1D4D9),
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            left: 0,
            child: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                  color: const Color(0xffEBEDF1),
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icon/starInActive.png', width: 28,height: 28,),
                ],
              )
            ),
          ),
          Positioned(
            bottom: 8,
            left: 30.5,
            child: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                  color: const Color(0xffEBEDF1),
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icon/starInActive.png', width: 28,height: 28,),
                ],
              )
            ),
          ),
          Positioned(
            bottom: 16,
            right: 0,
            child: Container(
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                  color: const Color(0xffEBEDF1),
                  borderRadius: BorderRadius.circular(100)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icon/starInActive.png', width: 28,height: 28,),
                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}