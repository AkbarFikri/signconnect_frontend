// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:signconnect_frontend/auth/register.dart';
import 'package:signconnect_frontend/custom%20widget/form_login.dart';
import 'package:signconnect_frontend/navbar.dart';

import '../custom widget/button.dart';
import '../theme.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: appPrimary,
        appBar: AppBar(
          backgroundColor: appPrimary,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 50.0),
                      Text(
                        'Selamat Datang,',
                        style: TextStyle(
                          fontSize: 26.0,
                          color: appWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        'Silahkan login terlebih dahulu',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: appWhite,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25.0),
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: appWhite,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: Image.asset("assets/icon/logo.png"),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          'SIGN-APPS',
                          style: TextStyle(
                            color: appBlack,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          'Lorem ipsum dot amet color',
                          style: TextStyle(
                            color: appDarkgray,
                            fontSize: 14.0,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        const FormLoginEmail(
                          title: 'Email',
                        ),
                        const SizedBox(height: 20),
                        const FormLoginSandi(
                          title: 'Kata sandi',
                        ),
                        const SizedBox(height: 20.0),
                        Button(
                          onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Navbar()),
                                (route) => false,
                              );
                            }
                          },
                          formKey: _formKey,
                          title: 'Masuk',
                        ),
                        const SizedBox(height: 20.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Belum punya akun? ",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: appWhite,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Register()));
                        },
                        child: Text(
                          "Daftar",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: appWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
