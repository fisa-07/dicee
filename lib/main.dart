import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 10.0,
        title: Center(
          child: Text(
            'Dicee',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.red,
        shadowColor: Colors.black,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 1;
  int rightDiceNo = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNo = Random().nextInt(6) + 1;
      rightDiceNo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image(
                  image: AssetImage('images/dice$leftDiceNo.png'),
                ),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  changeDiceFace();
                },
                child: Image(
                  image: AssetImage('images/dice$rightDiceNo.png'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
