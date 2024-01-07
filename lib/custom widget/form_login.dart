import 'package:flutter/material.dart';

import '../theme.dart';

class FormLoginEmail extends StatelessWidget {
  final String title;

  const FormLoginEmail({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: appPrimary,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade200,
        hintText: title,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: appPrimary.withOpacity(0.6)),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "$title tidak boleh kosong";
        }
        return null;
      },
    );
  }
}

class FormLoginSandi extends StatefulWidget {
  final String title;
  const FormLoginSandi({
    super.key,
    required this.title,
  });

  @override
  State<FormLoginSandi> createState() => _FormLoginSandiState();
}

class _FormLoginSandiState extends State<FormLoginSandi> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: appPrimary,
      obscureText: isObscure,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade200,
        hintText: widget.title,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(
            color: appPrimary.withOpacity(0.6),
          ),
        ),
        suffixIcon: IconButton(
          color: appDarkgray,
          icon: Icon(
            isObscure ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '${widget.title} tidak boleh kosong';
        }
        return null;
      },
    );
  }
}
