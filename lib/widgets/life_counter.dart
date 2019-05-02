import 'package:flutter/material.dart';

class LifeCounter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LifeCounterState();
  }
}

class LifeCounterState extends State<LifeCounter> {
  int total = 40;

  void addLifeTotal() {
    setState(() {
      total++;
    });
  }

  void resetLifeTotal() {
    setState(() {
      total = 40;
    });
  }

  void subLifeTotal() {
    setState(() {
      total--;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2,
          child: Center(
            child: Text(
              total.toString(),
              style: TextStyle(fontSize: 150.0, color: Colors.white),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: InkWell(
                  onTap: addLifeTotal,
                  onLongPress: resetLifeTotal,
                ),
              )
            ),
             Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: InkWell(
                  onTap: subLifeTotal,
                  onLongPress: resetLifeTotal,
                ),
              )
            ),
          ],
        )
      ],
    );
  }
}
