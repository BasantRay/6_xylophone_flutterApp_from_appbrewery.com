import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SingleButton(color: Colors.red,note: 'note1.wav',),
              SingleButton(color: Colors.greenAccent,note: 'note2.wav',),
              SingleButton(color: Colors.purple,note: 'note3.wav',),
              SingleButton(color: Colors.lightBlueAccent,note: 'note4.wav',),
              SingleButton(color: Colors.orange,note: 'note5.wav',),
              SingleButton(color: Colors.redAccent,note: 'note6.wav',),
              SingleButton(color: Colors.green,note: 'note7.wav',),
            ],
          ),
        ),
      ),
    );
  }
}

class SingleButton extends StatelessWidget {
  SingleButton({super.key, required this.color, required  this.note});
final Color color;
final String note;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(color),),
        onPressed: () {
          AudioPlayer player = AudioPlayer();
          player.play(
            AssetSource(note),
          );
        },
        child: Text(''),
      ),
    );
  }
}
