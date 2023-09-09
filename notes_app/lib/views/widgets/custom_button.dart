import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoadig = false});
  final void Function()? onTap;
  final bool isLoadig;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Color(0xff63FFDA)),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Center(
          child: isLoadig
              ? CircularProgressIndicator(
                  color: Colors.black,
                )
              : Text(
                  'Add',
                  style: TextStyle(color: Colors.black),
                ),
        ),
      ),
    );
  }
}
