import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  Widget build(BuildContext context) {
    int ldrn=6;
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar:
        AppBar(
          backgroundColor: Colors.green[500],
          title: Text('Dicee Changing',
            style:
            TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ),
      body: Center(
        child: Row(
          children: [

            Expanded(child:
            FlatButton(onPressed: () {
              print('i am there');
            },
              child:Image.asset('images/dice$ldrn.png'),
            ),
            ),

            Expanded(child:
            FlatButton(onPressed: () {
              print('i am here');
            },
            child:Image.asset('images/dice5.png'),
            ),
            ),

          ],
        ),
      ),
    );
  }
}
