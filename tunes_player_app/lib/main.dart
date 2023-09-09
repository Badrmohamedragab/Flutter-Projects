import 'package:flutter/material.dart';
import 'package:music_notes_player_app_setup/components/containers.dart';
import 'package:music_notes_player_app_setup/models/item_model.dart';

void main() {
  runApp(TunesPlayerApp());
}

class TunesPlayerApp extends StatelessWidget {
  const TunesPlayerApp({super.key});
  final List<ItemModel> items = const [
    ItemModel(color: Colors.red, source: 'note1.wav'),
    ItemModel(color: Colors.orange, source: 'note2.wav'),
    ItemModel(color: Colors.yellow, source: 'note3.wav'),
    ItemModel(color: Color(0xff33AF57), source: 'note4.wav'),
    ItemModel(color: Color(0xff009587), source: 'note5.wav'),
    ItemModel(color: Color(0xff0097ED), source: 'note6.wav'),
    ItemModel(color: Color(0xff72227A), source: 'note7.wav')
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tunes Player',
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff243139),
          centerTitle: true,
          title: Text(
            'Flutter Tune',
            style: TextStyle(),
          ),
        ),
        body: Column(
            children: items
                .map((e) => item(color: e.color, source: e.source))
                .toList()),
      ),
    );
  }
}
