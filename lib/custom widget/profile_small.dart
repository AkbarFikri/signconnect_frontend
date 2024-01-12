import 'package:flutter/material.dart';
import 'package:signconnect_frontend/theme.dart';

class ProfileSmall extends StatelessWidget {
  final String title;
  final String value;
  final String icon;

  const ProfileSmall({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.42,
      height: 90.0,
      decoration: BoxDecoration(
        color: const Color(0xffF1F4FF),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 40.0,
            height: 40.0,
            child: Image.asset(icon),
          ),
          const SizedBox(width: 10.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16.0,
                  color: Color(0xff929292),
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: appPurple,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
