import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(_Homestart());
}

class _Homestart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.lightBlue,
          body: Center(
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  child: Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                _Counter(),
              ],
            ),
          ),
        ));
  }
}

class _Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CounterState();
  }
}

class _CounterState extends State<_Counter> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    setState(() {
      texty();
    });
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.remove),
          iconSize: 50,
          onPressed: () {
            setState(() {
              i--;
            });
          },
        ),
        Text(
          i.toString(),
          style: TextStyle(fontSize: 40, fontFamily: "PressStart2P"),
        ),
        IconButton(
          icon: Icon(Icons.add),
          iconSize: 50,
          onPressed: () {
            setState(() {
              i++;
            });
          },
        )
      ],
    );
  }

  void texty() {
    Text(
      i.toString(),
      style: TextStyle(fontSize: 50),
    );
  }
}
