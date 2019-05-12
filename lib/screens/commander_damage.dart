import 'package:flutter/material.dart';
import 'package:dice_roller/model/player.dart';

class CommanderDamage extends StatefulWidget {
  int damage;
  CommanderDamage({this.damage, Key key});

  @override
  State<StatefulWidget> createState() {
    return CommanderDamageState();
  }
}

class CommanderDamageState extends State<CommanderDamage> {
var damage = 0;
  
  void update() {
    setState(() {
      this.widget.damage++;
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 4,
          itemBuilder: (BuildContext context, index) {
            return Container(
              child: Column(
                children: <Widget>[
                  Text("Player " + index.toString()),
                  InkWell(
                    onTap: update,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      child: Text(this.widget.damage.toString()),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
