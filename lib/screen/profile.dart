import 'package:flutter/material.dart';
import 'package:signconnect_frontend/auth/login.dart';
import 'package:signconnect_frontend/custom%20widget/button.dart';
import 'package:signconnect_frontend/custom%20widget/profile_big.dart';
import 'package:signconnect_frontend/custom%20widget/profile_small.dart';

import '../theme.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appSoftPurple,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildProfileHeader(),
            const SizedBox(height: 15.0),
            _buildProfileInfo(),
            const SizedBox(height: 20.0),
            _buildAkunKuSection(),
            _buildProfileStats(),
            const ProfileBig(
              title: 'Leaderboard',
              content: 'Yuk cek peringkatmu!',
              icon: 'assets/icon/leaderboard.png',
            ),
            const ProfileBig(
              title: 'Data Diri',
              content: 'Lengkapi data dirimu',
              icon: 'assets/icon/datadiri.png',
            ),
            _buildKeluarButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Stack(
      children: [
        ClipPath(
          clipper: ClipPathClass(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.17,
            color: appSoftPurple,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(
            child: Stack(
              children: [
                Container(
                  width: 130.0,
                  height: 130.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 5.0,
                      color: appWhite,
                    ),
                  ),
                  child: Image.asset('assets/image/profile.png'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: appSoftPurple,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 3.0,
                        color: appWhite,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        size: 20.0,
                        color: appWhite,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildProfileInfo() {
    return Column(
      children: [
        Text(
          "Ameera Zaneta",
          style: TextStyle(
            fontSize: 23.0,
            fontWeight: FontWeight.bold,
            color: appBlack,
          ),
        ),
        const SizedBox(height: 5.0),
        const Text(
          "ameerazaneta@gmail.com",
          style: TextStyle(
            fontSize: 16.0,
            color: Color(0xff929292),
          ),
        ),
      ],
    );
  }

  Widget _buildAkunKuSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Akun-Ku",
          style: TextStyle(
            fontSize: 18.0,
            color: appBlack,
          ),
        ),
      ),
    );
  }

  Widget _buildProfileStats() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ProfileSmall(
            title: 'Level',
            value: '1',
            icon: 'assets/image/level.png',
          ),
          ProfileSmall(
            title: 'Total Xp',
            value: '64',
            icon: 'assets/icon/xp.png',
          ),
        ],
      ),
    );
  }

  Widget _buildKeluarButton() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 12.0,
      ),
      child: Button(
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const Login()),
            (Route<dynamic> route) => false,
          );
        },
        formKey: _formKey,
        title: 'Keluar',
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
