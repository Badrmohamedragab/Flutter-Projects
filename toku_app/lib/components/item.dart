import 'package:flutter/material.dart';
import 'package:toku/components/phrase_item.dart';
import 'package:toku/models/number.dart';

// ignore: camel_case_types
class item extends StatelessWidget {
  final ItemModel number;
  final Color color;
  const item({super.key, required this.number, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFFDE4),
            child: Image.asset(number.image!),
          ),
          Expanded(
              child: PhrasesItem(
            number: number,
            color: color,
          ))
        ],
      ),
    );
  }
}
