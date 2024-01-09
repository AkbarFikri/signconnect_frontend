import 'package:flutter/material.dart';
import '../theme.dart';

class Button extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final String title;
  final VoidCallback onPressed;

  const Button({
    Key? key,
    required this.formKey,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: appPurple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 0,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: appWhite,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
