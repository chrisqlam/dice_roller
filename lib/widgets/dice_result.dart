import 'package:flutter/material.dart';
import 'dart:math';

class DiceResult extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DiceResultState();
  }
}

class DiceResultState extends State<DiceResult> {
  var result;
  var random;

  void rolld20() {
    setState(() {
      random = new Random();
      result = random.nextInt(20);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          result.toString(),
          style: TextStyle(fontSize: 40, color: Colors.white),
        ),
      ),
    );
  }
}
  Widget d20() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        tooltip: 'Push to roll',
        child: Text('D20'),
      ),
    );
  }

  Widget d12() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        tooltip: 'Push to roll',
        child: Text('D12'),
      ),
    );
  }

  Widget d10() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        tooltip: 'Push to roll',
        child: Text('D10'),
      ),
    );
  }

  Widget d8() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        tooltip: 'Push to roll',
        child: Text('D8'),
      ),
    );
  }

  Widget d6() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        tooltip: 'Push to roll',
        child: Text('D6'),
      ),
    );
  }

  Widget d4() {
    return Container(
      child: FloatingActionButton(
        onPressed: null,
        tooltip: 'Push to roll',
        child: Text('D4'),
      ),
    );
  }
