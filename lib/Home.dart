import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main() {
  runApp(HomeScreen());
}
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  Scaffold(backgroundColor: Colors.white,
            body:ListView(
                children: <Widget>[ Container(width: 420,height:800,  color: Color.fromRGBO(107, 119, 214, 1),)
                ])
        ));
  }
}