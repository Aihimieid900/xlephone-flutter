import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playSound(int value) {
    AudioCache player = AudioCache();
    player.play('note$value.wav');
  }

  buildKey({int value, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(value);
        },
        child: Text(' '),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(value: 1, color: Colors.red),
                buildKey(value: 2, color: Colors.orange),
                buildKey(value: 3, color: Colors.yellow),
                buildKey(value: 4, color: Colors.green),
                buildKey(value: 5, color: Colors.teal),
                buildKey(value: 6, color: Colors.blue),
                buildKey(value: 7, color: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
