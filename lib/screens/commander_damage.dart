import 'package:flutter/material.dart';

class CommanderDamage extends StatefulWidget {
  var damage = [0, 0, 0, 0, 0, 0];

  @override
  CommanderDamageState createState() => CommanderDamageState();
}

class CommanderDamageState extends State<CommanderDamage> {

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
                physics: NeverScrollableScrollPhysics(),              
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: widget.damage.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        widget.damage[index]++;
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        widget.damage[index] = 0;
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
                            widget.damage[index].toString(),
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
