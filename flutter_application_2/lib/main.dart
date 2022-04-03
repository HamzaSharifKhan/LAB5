import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(MaterialApp(
    home: Ball(),
  ));
}

class Ball extends StatelessWidget {
  const Ball({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 37, 75, 107),
          title: Text("Ask Me Anything"),
        ),
        backgroundColor: Colors.blue,
        body: Container(
            child: FlatButton(
              onPressed: () {
                print("I got clicked");
                int Number = Random().nextInt(5);
                print(Number);
              },
              child: Image(image: AssetImage('images/ball1.png')),
            ),
            alignment: Alignment.center),
      ),
    );
  }
}
