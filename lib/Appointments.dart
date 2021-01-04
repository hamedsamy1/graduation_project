import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main() {
  runApp(AppoScreen());
}
class AppoScreen extends StatefulWidget {
  @override
  _AppoScreenState createState() => _AppoScreenState();
}
class _AppoScreenState extends State<AppoScreen> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  Scaffold(backgroundColor: Colors.white,
            body: ListView(
                children: <Widget>[Container(width: 420,height:800,  color: Color.fromRGBO(107, 119, 214, 1),)
                ])

        ));
  }
}