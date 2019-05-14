import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  int result;
  String finalResult = "";
  int total = 40;

  @override
  DiceRollerState createState() => DiceRollerState();
}

class DiceRollerState extends State<DiceRoller> {
  void addLifeTotal() {
    setState(() {
      widget.total++;
    });
  }

  void resetLifeTotal() {
    setState(() {
      widget.total = 40;
    });
  }

  void subLifeTotal() {
    setState(() {
      if (widget.total == 0) {
        widget.total = 0;
      } else {
        widget.total--;
      }
    });
  }

  void rolld20() {
    setState(() {
      var random = new Random();
      widget.result = 1 + random.nextInt(20);
      widget.finalResult = widget.result.toString();
    });
  }

  void rolld12() {
    setState(() {
      var random = new Random();
      widget.result = 1 + random.nextInt(12);
      widget.finalResult = widget.result.toString();
    });
  }

  void rolld10() {
    setState(() {
      var random = new Random();
      widget.result = 1 + random.nextInt(10);
      widget.finalResult = widget.result.toString();
    });
  }

  void rolld8() {
    setState(() {
      var random = new Random();
      widget.result = 1 + random.nextInt(8);
      widget.finalResult = widget.result.toString();
    });
  }

  void rolld6() {
    setState(() {
      var random = new Random();
      widget.result = 1 + random.nextInt(6);
      widget.finalResult = widget.result.toString();
    });
  }

  void rolld4() {
    setState(() {
      var random = new Random();
      widget.result = 1 + random.nextInt(4);
      widget.finalResult = widget.result.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          animatedIconTheme: IconThemeData(size: 22.0),
          curve: Curves.bounceIn,
          overlayColor: Colors.blue,
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
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xfff6921e), Color(0xffee4036)])),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.5,
                    child: Center(
                      child: Text(
                        widget.total.toString(),
                        style: TextStyle(fontSize: 150.0, color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 1.5,
                          child: InkWell(
                            onTap: addLifeTotal,
                            onLongPress: resetLifeTotal,
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 1.5,
                          child: InkWell(
                            onTap: subLifeTotal,
                            onLongPress: resetLifeTotal,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Expanded(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      (widget.finalResult != "")
                          ? Text("You rolled:",
                              style: TextStyle(
                                  fontSize: 28.0, color: Colors.white))
                          : Container(),
                      Text(
                        "${widget.finalResult}",
                        style: TextStyle(fontSize: 90.0, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
