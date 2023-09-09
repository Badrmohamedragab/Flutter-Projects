import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      this.text,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged,
      this.label});
  final String? text;
  final int maxLines;
  String? label;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: label,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required!';
        } else {
          return null;
        }
      },
      onChanged: onChanged,
      onSaved: onSaved,
      cursorColor: Color(0xff63FFDA),
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(color: Color(0xff63FFDA)),
          border: BuildBorder(),
          enabledBorder: BuildBorder(),
          focusedBorder: BuildBorder(Color(0xff63FFDA))),
    );
  }
}

OutlineInputBorder BuildBorder([color]) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white));
}
