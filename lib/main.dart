import 'package:demo1/MyAnimatedContainer.dart';
import 'package:demo1/MyAnimatedOpacity.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        //debugShowCheckedModeBanner : false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
//        primaryColor:Colors.black,
//        primaryIconTheme:IconThemeData(color:Colors.black),
//        primaryTextTheme: TextTheme(
//          title: TextStyle(color:Colors.black, fontFamily: "Aveny")),
//        textTheme: TextTheme(title: TextStyle(color: Colors.black)),
//
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Tutorial'),
          ),
          body: Home(),
        ));
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
            title: Text('MyAnimatedContainer'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MyAnimatedContainer()));
            }),
        ListTile(
          title: Text('MyAnimatedOpacity'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyAnimatedOpacity()));
          },
        )
      ],
    );
  }
}
