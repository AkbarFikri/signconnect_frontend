import 'package:flutter/material.dart';

import '../theme.dart';

class FormRegister extends StatelessWidget {
  final String title;
  final String hintText;

  const FormRegister({
    required this.title,
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: appBlack,
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10.0),
        TextFormField(
          cursorColor: appPrimary,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
            filled: true,
            fillColor: Colors.transparent,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey.shade400),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: appPrimary.withOpacity(0.6)),
            ),
            
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return '$title tidak boleh kosong';
            }
            return null;
          },
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
