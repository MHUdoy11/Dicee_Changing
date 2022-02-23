import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int ldrn=2;
  int rdrn=1;
  void press(){
    setState(() {
      rdrn= Random().nextInt(6)+1;
      ldrn= Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      appBar:
        AppBar(
          backgroundColor: Colors.green[900],
          title: Center(
            child: Text('Dicee Changing',
              style:
              TextStyle(
                fontFamily: 'Dancing_Script',
                fontSize: 42,
                color: Colors.white,
              ),
            ),
          ),
        ),
      body:

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.white
            ,
            child: Text('Click and enjoy the changing',
              style:
              TextStyle(
                fontFamily: 'Cookie',
                fontSize: 46,
                color: Colors.cyan,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [

              Expanded(child:
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {
              press();
              },
                child:Image.asset('images/dice$ldrn.png',
                  color: Colors.purpleAccent,
                ),
              ),
              ),

              Expanded(
                child:
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {
                  press();
                },
                child:Image.asset('images/dice$rdrn.png',
                  color: Colors.redAccent,
                ),
              ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
