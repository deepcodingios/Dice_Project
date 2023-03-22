import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 3;

  void generateRandomNumbers() {
    rightDiceNumber = Random().nextInt(5) + 1;
    leftDiceNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  generateRandomNumbers();
                  print('Left Button pressed: $leftDiceNumber');
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  generateRandomNumbers();
                  print('Right Button pressed: $rightDiceNumber');
                });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
          SizedBox(
            width: 16.0,
          )
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {
// }
