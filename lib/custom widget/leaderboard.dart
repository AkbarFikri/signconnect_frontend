import 'package:flutter/material.dart';
import '../theme.dart';

class Leaderboard extends StatelessWidget {
  final dynamic no;
  final String foto;
  final String nama;
  final String xp;

  const Leaderboard({
    super.key,
    required this.no,
    required this.foto,
    required this.nama,
    required this.xp,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 24,
                  height: 24,
                  child: no is String
                      ? Image.asset(no)
                      : Text(
                          '$no',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: appBlack,
                          ),
                        ),
                ),
                const SizedBox(width: 5),
                Center(
                  child: Container(
                    width: 37.5,
                    height: 37.5,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: appSoftPurple,
                      border: Border.all(
                        width: 2.5,
                        color: const Color(0xffCFD3F9),
                      ),
                    ),
                    child: Image.asset(foto),
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  nama,
                  style: TextStyle(
                    fontSize: 16,
                    color: appBlack,
                  ),
                )
              ],
            ),
            Text(
              '$xp XP',
              style: TextStyle(
                fontSize: 14,
                color: appDarkgray,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
