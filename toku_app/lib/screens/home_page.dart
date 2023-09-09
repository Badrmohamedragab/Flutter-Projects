import 'package:flutter/material.dart';
import 'package:toku/screens/colors_page.dart';
import 'package:toku/screens/familyMembers_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFDE4),
      appBar: AppBar(
        title: Text('Toku'),
        backgroundColor: Color(0xFF49332A),
      ),
      body: Column(
        children: [
          Category('Numbers', Color(0xffFF9F3C), () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return NumbersPage();
                },
              ),
            );
          }),
          Category('FamilyMembers', Color(0xff5E8A3F), () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return FamilyMember();
                },
              ),
            );
          }),
          Category('Colors', Color(0xff854CAE), () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ColorsPage();
                },
              ),
            );
          }),
          Category('Phrases', Color(0xff51B0D5), () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }),
            );
          }),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable

