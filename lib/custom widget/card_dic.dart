import 'package:flutter/material.dart';

import '../theme.dart';

class CardDic extends StatelessWidget {
  final String title;
  final String icon;

  const CardDic({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 20.0,
      ),
      padding: const EdgeInsets.all(20.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: appWhite,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              color: Color(0xffE5E5E5),
              blurRadius: 8.0,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xffE3E5FF),
                  border: Border.all(
                    width: 2.0,
                    color: appPurple,
                  ),
                ),
                child: Container(
                    margin: const EdgeInsets.all(5.0),
                    child: Image.asset(icon)),
              ),
              const SizedBox(width: 10.0),
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: appBlack,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_forward_ios,
              color: appBlack,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
