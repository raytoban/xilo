import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XiloApp());
}

class XiloApp extends StatelessWidget {
  const XiloApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AudioCache p = AudioCache();
    Widget notexilo(Color couleur, String nomfichier) {
      return Expanded(
        child: GestureDetector(
          // style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(couleur)),
          onTap: () {
            p.play(nomfichier);
          },
          child: Container(
            color: couleur,
          ),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              notexilo(Colors.red, 'note1.wav'),
              notexilo(Colors.orange, 'note2.wav'),
              notexilo(Colors.yellow, 'note3.wav'),
              notexilo(Colors.green, 'note4.wav'),
              notexilo(Colors.teal, 'note5.wav'),
              notexilo(Colors.blue, 'note6.wav'),
              notexilo(Colors.purple, 'note7.wav'),
            ],
          ),
        ),
      ),
    );
  }
}
