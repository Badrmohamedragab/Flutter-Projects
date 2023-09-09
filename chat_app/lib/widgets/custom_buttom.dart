import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.ontab, super.key, required this.title});
  final String title;
  VoidCallback? ontab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontab,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
