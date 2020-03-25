import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Color> cList = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: Text('Xylophone'),
      ),
      body: Column(
        children: <Widget>[
          button(0),
          button(1),
          button(2),
          button(3),
          button(4),
          button(5),
          button(6),
        ],
      ),
    );
  }

  Widget button(int index) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 0.0),
        child: Container(
          color: cList[index],
        ),
        onPressed: () {
          final player = AudioCache();
          player.play('note${index + 1}.wav');
        },
      ),
    );
  }
}
