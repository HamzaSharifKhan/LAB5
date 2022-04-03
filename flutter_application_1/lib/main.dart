import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const player());
}

class player extends StatelessWidget {
  const player({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: <Widget>[
            Expanded(child: met(1, Colors.blue)),
            Expanded(child: met(2, Colors.black)),
            met(3, Colors.yellow),
            met(4, Colors.red),
            met(5, Colors.orange),
            met(6, Colors.greenAccent),
          ],
        ),
      ),
    );
  }

  Container met(int num, Color c) {
    return Container(
      child: TextButton(
        onPressed: () {
          final AudioCache audio = AudioCache();
          audio.play('note$num.wav');
        },
        child: Text(''),
      ),
      color: c,
      height: double.infinity,
    );
  }
}
