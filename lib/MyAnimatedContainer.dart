import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimatedContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AnimatedContainerState();
}

class _AnimatedContainerState extends State<MyAnimatedContainer> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadius _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ), //Appbar
      body: Center(
          child: AnimatedContainer(
              width: _width,
              height: _height,
              //color: _color,
              decoration:
                  BoxDecoration(color: _color, borderRadius: _borderRadius),
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn)),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              final random = Random();
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();
              _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                  random.nextInt(256), 1);
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
          child: Icon(Icons.play_arrow)),
    );
  }
}
