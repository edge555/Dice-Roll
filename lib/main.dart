import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  Random random = new Random();
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  void rollDice(){
    setState(() {
      leftDiceNum = random.nextInt(5)+1;
      rightDiceNum = random.nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                onPressed: (){
                  rollDice();
                },
                child: Image.asset('images/dice$leftDiceNum.png'),
              )
          ),
          Expanded(
              child: TextButton(
                onPressed: (){
                  rollDice();
                },
                child: Image.asset('images/dice$rightDiceNum.png'),
              )
          ),
        ],
      ),
    );
  }
}