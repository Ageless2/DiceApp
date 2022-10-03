import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const Dice());
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftnumber = 1;
  int rightnumber = 4;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Dicee',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
        backgroundColor: Colors.red,
        body: Center(
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        leftnumber = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$leftnumber.png')),
              )),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        rightnumber = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$rightnumber.png')),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
