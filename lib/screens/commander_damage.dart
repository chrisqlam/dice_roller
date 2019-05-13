import 'package:flutter/material.dart';
import 'package:dice_roller/model/player.dart';

class CommanderDamage extends StatefulWidget {
  int damage = 0;
  CommanderDamage({this.damage, Key key});

  @override
  State<StatefulWidget> createState() {
    return CommanderDamageState();
  }
}

class CommanderDamageState extends State<CommanderDamage> {
  var damage = [0, 0, 0, 0, 0, 0];
  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xfff6921e), Color(0xffee4036)],
                ),
              ),
              child: GridView.builder(                 
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: damage.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        damage[index]++;
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        damage[index] = 0;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              'Player ${index + 1}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            damage[index].toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
