import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:dice_roller/widgets/life_counter.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DiceRollerState();
  }
}

class DiceRollerState extends State<DiceRoller> {
  int result;

  void rolld20() {
    setState(() {
      var random = new Random();
      result = 1 + random.nextInt(20);
      result.toString();
    });
  }
    void rolld12() {
    setState(() {
      var random = new Random();
      result = 1 + random.nextInt(12);
      result.toString();
    });
  }
    void rolld10() {
    setState(() {
      var random = new Random();
      result = 1 + random.nextInt(10);
      result.toString();
    });
  }
    void rolld8() {
    setState(() {
      var random = new Random();
      result = 1 + random.nextInt(8);
      result.toString();
    });
  }
    void rolld6() {
    setState(() {
      var random = new Random();
      result = 1 + random.nextInt(6);
      result.toString();
    });
  }
    void rolld4() {
    setState(() {
      var random = new Random();
      result = 1 + random.nextInt(4);
      result.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Life Counter"),
        ),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          animatedIconTheme: IconThemeData(size: 22.0),
          curve: Curves.bounceIn,
          overlayOpacity: 0.5,
          heroTag: 'speed-dial-hero-tag',
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 8.0,
          shape: CircleBorder(),
          children: [
            SpeedDialChild(
                child: Icon(const IconData(0xe800, fontFamily: 'DiceFont')),
                backgroundColor: Colors.red,
                label: 'D4',
                onTap: rolld4,
                ),
            SpeedDialChild(
              child: Icon(const IconData(0xe805, fontFamily: 'DiceFont')),
              backgroundColor: Colors.red,
              label: 'D6',
              onTap: rolld6,
            ),
            SpeedDialChild(
              child: Icon(const IconData(0xe804, fontFamily: 'DiceFont')),
              backgroundColor: Colors.red,
              label: 'D8',
              onTap: rolld8,
            ),
            SpeedDialChild(
              child: Icon(const IconData(0xe803, fontFamily: 'DiceFont')),
              backgroundColor: Colors.red,
              label: 'D10',
              onTap: rolld10,
            ),
            SpeedDialChild(
              child: Icon(const IconData(0xe802, fontFamily: 'DiceFont')),
              backgroundColor: Colors.red,
              label: 'D12',
              onTap: rolld12,
            ),
            SpeedDialChild(
              child: Icon(const IconData(0xe801, fontFamily: 'DiceFont')),
              backgroundColor: Colors.red,
              label: 'D20',
              onTap: rolld20,
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            LifeCounter(),
            Center(
              child: Text("Dice Result:", style: TextStyle(fontSize: 16.0, color: Colors.white),),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "$result",
                  style: TextStyle(fontSize: 90.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
