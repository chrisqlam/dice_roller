import 'package:flutter/material.dart';
import 'package:dice_roller/model/player.dart';

class CommanderCounter extends StatefulWidget {
final String player;
final int damage;

CommanderCounter({this.player, this.damage});

  @override
  State<StatefulWidget> createState() {
    return CommanderCounterState();
  }
}

class CommanderCounterState extends State<CommanderCounter> {
@override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: 4,
          itemBuilder: (BuildContext context, index) {
            return CommanderCounter();
          },
        ),
      ),
    );
  }
}
