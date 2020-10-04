import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XyloPhoneApp());
}

class XyloPhoneApp extends StatelessWidget {
  Widget playSound(soundNumber, color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundNumber.wav');
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              playSound(1, Color(0xffffadad)),
              playSound(2, Color(0xffffd6a5)),
              playSound(3, Color(0xfffdffb6)),
              playSound(4, Color(0xffcaffbf)),
              playSound(5, Color(0xff9bf6ff)),
              playSound(6, Color(0xffa0c4ff)),
              playSound(7, Color(0xffffc6ff)),
            ],
          ),
        ),
      ),
    );
  }
}
