import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.black26,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftImageNumber = 1;
  int rightImageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
                child: TextButton(
                    onPressed: () {
                      changeDiceFace();
                      print('left button pressed');
                    },
                    child: Image.asset('images/dice$leftImageNumber.png'))),
            Expanded(
                child: TextButton(
                    onPressed: () {
                      changeDiceFace();
                      print('right button pressed');
                    },
                    child: Image.asset('images/dice$rightImageNumber.png'))),
          ],
        ),
      ),
    );
  }

  void changeDiceFace() {
    setState(() {
      leftImageNumber = Random().nextInt(6) + 1;
      rightImageNumber = Random().nextInt(6) + 1;
    });
  }
}
