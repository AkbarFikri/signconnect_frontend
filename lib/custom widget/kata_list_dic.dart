import 'package:flutter/material.dart';
import 'package:signconnect_frontend/theme.dart';

class KataListDic extends StatelessWidget {
  final String title;

  const KataListDic({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.transparent,
          margin: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18.0,
                  color: appBlack,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: appBlack,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: Color(0xffE0E0E0),
          thickness: 1,
        ),
      ],
    );
  }
}
