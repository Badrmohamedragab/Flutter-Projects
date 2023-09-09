import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  Textfield(
      {required this.hintName, required this.onchanged, required this.obscure});
  final String? hintName;
  Function(String)? onchanged;
  bool obscure;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      validator: (data) {
        if (data!.isEmpty) {
          return 'Empty Field!';
        }
      },
      onChanged: onchanged,
      decoration: InputDecoration(
        hintText: '$hintName',
        hintStyle: TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
