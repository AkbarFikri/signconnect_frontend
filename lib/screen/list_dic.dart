import 'package:flutter/material.dart';
import 'package:signconnect_frontend/custom%20widget/kata_list_dic.dart';
import 'package:signconnect_frontend/screen/kosakata_dic.dart';

import '../theme.dart';

class ListDic extends StatefulWidget {
  const ListDic({super.key});

  @override
  State<ListDic> createState() => _ListDicState();
}

class _ListDicState extends State<ListDic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appSoftPurple,
        iconTheme: IconThemeData(
          color: appWhite,
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 120.0,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            color: appSoftPurple,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Perkenalan',
                        style: TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: appWhite,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        'Yuk kita mulai berkenalan!',
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
          Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: appWhite,
                borderRadius: BorderRadius.circular(50.0),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffE0E0E0),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey.shade400),
                  const SizedBox(width: 3.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari disini...',
                        hintStyle: TextStyle(color: appDarkgray),
                        border: InputBorder.none,
                      ),
                      cursorColor: appDarkgray,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.cancel, color: Colors.grey.shade400),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const KosaKataDic())));
              },
              child: const KataListDic(title: 'Halo')),
          const KataListDic(title: 'Aku'),
        ],
      ),
    );
  }
}
