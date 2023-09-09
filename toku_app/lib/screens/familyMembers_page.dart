import 'package:flutter/material.dart';
import 'package:toku/models/number.dart';
import 'package:toku/components/item.dart';

class FamilyMember extends StatelessWidget {
  final List<ItemModel> family = const [
    ItemModel(
        sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'father'),
    ItemModel(
        sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'daughter'),
    ItemModel(
        sound: 'sounds/family_members/grand_father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Sofu',
        enName: 'grand father'),
    ItemModel(
        sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'mother'),
    ItemModel(
        sound: 'sounds/family_members/grand_mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'grand mother'),
    ItemModel(
        sound: 'sounds/family_members/older_brother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Ani',
        enName: 'older brother'),
    ItemModel(
        sound: 'sounds/family_members/older_sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'older sister'),
    ItemModel(
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'son'),
    ItemModel(
        sound: 'sounds/family_members/younger_brother.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'younger brother'),
    ItemModel(
        sound: 'sounds/family_members/younger_sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imōto',
        enName: 'younger sister')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(
          (0xff49332A),
        ),
        title: Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, num) {
          return item(
            number: family[num],
            color: Color(0xff5E8A3F),
          );
        },
      ),
    );
  }
}
