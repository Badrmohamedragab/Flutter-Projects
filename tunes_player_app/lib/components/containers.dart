import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class item extends StatelessWidget {
  const item({super.key, required this.color, required this.source});
  final Color color;
  final String source;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          final player = AudioPlayer();
          player.play(
            AssetSource(source),
          );
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
