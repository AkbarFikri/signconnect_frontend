// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../custom widget/button.dart';
import '../custom widget/form_register.dart';
import '../theme.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Buat Akun',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: appBlack,
          ),
        ),
        elevation: 0,
        backgroundColor: appWhite,
        iconTheme: IconThemeData(color: appBlack),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 130,
                  child: Image.asset('assets/image/maskot.png'),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xffD3D6F9).withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text(
                    'Tidak sabar untuk belajar bersama!',
                    style: TextStyle(
                      color: appPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                FormRegister(
                  title: 'Nama',
                  hintText: 'Ameera Zaneta',
                ),
                FormRegister(
                  title: 'Email',
                  hintText: 'ameerazaneta@gmail.com',
                ),
                FormRegister(
                  title: 'Kata sandi',
                  hintText: 'Minimal 8 karakter',
                ),
                FormRegister(
                  title: 'Konfirmasi Kata Sandi',
                  hintText: 'Kata sandi harus sama',
                ),
                Button(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        Navigator.pop(context);
                      }
                    },
                    formKey: _formKey,
                    title: 'Daftar'),
                SizedBox(height: 20.0),

                // yg dikomen masih terkendala di navigator pushnya, bertumpuk
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       "Sudah punya akun? ",
                //       style: TextStyle(
                //         fontSize: 14.0,
                //         color: appDarkgray,
                //       ),
                //     ),
                //     GestureDetector(
                //       onTap: () {
                //         Navigator.pushReplacement(
                //           context,
                //           MaterialPageRoute(builder: (context) => Login()),
                //         );
                //       },
                //       child: Text(
                //         "Masuk",
                //         style: TextStyle(
                //           fontSize: 14.0,
                //           color: appPrimary,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
