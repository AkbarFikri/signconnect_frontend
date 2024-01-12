import 'package:flutter/material.dart';
import 'package:signconnect_frontend/theme.dart';

class ProfileBig extends StatelessWidget {
  final String title;
  final String content;
  final String icon;

  const ProfileBig({
    super.key,
    required this.title,
    required this.content,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 8.0,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      width: MediaQuery.of(context).size.width,
      height: 90.0,
      decoration: BoxDecoration(
        color: const Color(0xffF1F4FF),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
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
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: appPurple,
                    ),
                  ),
                  const SizedBox(height: 2.0),
                  Text(
                    content,
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff929292),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 30.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffDBDFF6),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                color: appWhite,
                size: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
