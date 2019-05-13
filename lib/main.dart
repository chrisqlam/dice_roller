import 'package:flutter/material.dart';
import 'package:dice_roller/widgets/dice_roller.dart';
import 'package:dice_roller/screens/commander_damage.dart';
import 'package:dice_roller/model/player.dart';
import 'package:flutter/services.dart';

void main() async {
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            DiceRoller(),
            CommanderDamage(),
          ],
        ),
      ),
    );
  }
}
