import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Xylophone App",
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                colorTile(1, const Color.fromARGB(255, 255, 0, 0)),
                colorTile(2, const Color.fromARGB(255, 255, 153, 0)),
                colorTile(3, const Color.fromARGB(255, 255, 255, 0)),
                colorTile(4, const Color.fromARGB(255, 0, 255, 98)),
                colorTile(5, const Color.fromARGB(255, 0, 142, 251)),
                colorTile(6, const Color.fromARGB(255, 76, 0, 255)),
                colorTile(7, const Color.fromARGB(255, 154, 0, 189)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded colorTile(int noteNumber, Color color) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          AudioPlayer().play(AssetSource("note$noteNumber.wav"));
        },
        child: const Text(""),
      ),
    );
  }
}
