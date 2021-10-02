import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text('Rock paper scissors')),
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
  int rps = 1;
  String status = '3';
  //double imageSize = 80;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Expanded(
                child: TextButton(
                    onPressed: () {
                      changeDiceFace();
                    },
                    child: Image.asset('images/$rps.jpg'))),
            Expanded(
              child: Center(
                child: Text(
                  '$status',
                  style: TextStyle(color: Colors.white, fontSize: 100),
                ),
              ),
            ),
            Row(children: [
              Expanded(
                child: TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      'images/1.jpg',
                    )),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      'images/2.jpg',
                    )),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      'images/3.jpg',
                    )),
              ),
            ]),
          ],
        ),
      ),
    );
  }

  void changeDiceFace() {
    setState(() {
      rps = Random().nextInt(3) + 1;
    });
  }
}
