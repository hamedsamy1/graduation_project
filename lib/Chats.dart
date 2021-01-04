import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main() {
  runApp(ChatsScreen());
}
class ChatsScreen extends StatefulWidget {
  @override
  _ChatsScreenState createState() => _ChatsScreenState();
}
class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  Scaffold(backgroundColor: Colors.white,
            body: ListView(
                children: <Widget>[
                  Container(width: 420,height:800,  color: Color.fromRGBO(107, 119, 214, 1),)
                ])
        ));
  }
}