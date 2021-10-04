import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text('Rock paper scissors')),
        ),
        body: RpsPage(),
      ),
    ),
  );
}

class RpsPage extends StatefulWidget {
  const RpsPage({Key? key}) : super(key: key);

  @override
  _RpsPageState createState() => _RpsPageState();
}

class _RpsPageState extends State<RpsPage> {
  int rps = 1;
  String status = 'Click any of the three image below';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Expanded(
                child: TextButton(
                    onPressed: () {}, child: Image.asset('images/$rps.jpg'))),
            Expanded(
              child: Center(
                child: Text(
                  '$status',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Row(children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        change();
                        if (rps == 1) {
                          status = 'No winner!';
                        } else if (rps == 2) {
                          status = 'I won!';
                        } else if (rps == 3) {
                          status = 'You won!';
                        }
                      });
                    },
                    child: Image.asset(
                      'images/1.jpg',
                    )),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        change();
                        if (rps == 1) {
                          status = 'You won!';
                        } else if (rps == 2) {
                          status = 'No winner!';
                        } else if (rps == 3) {
                          status = 'I won!';
                        }
                      });
                    },
                    child: Image.asset(
                      'images/2.jpg',
                    )),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        change();
                        if (rps == 1) {
                          status = 'I won!';
                        } else if (rps == 2) {
                          status = 'You won!';
                        } else if (rps == 3) {
                          status = 'No winner!';
                        }
                      });
                    },
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

  void change() {
    rps = Random().nextInt(3) + 1;
  }
}
