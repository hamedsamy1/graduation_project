
import 'package:flutter/material.dart';
import 'bottom_nav.dart';
void main() {
  runApp(notifications());
}
class notifications extends StatefulWidget {
  @override
  _notificationsState createState() => _notificationsState();
}

class _notificationsState extends State<notifications> {
  bool value1 =  true;
  bool value2 = false;
  bool value3 = true;
  bool value4 = false;
  bool value5 = true;
  void onChangedValue(bool value){
    setState(() {
      value1 = value;
    });
  }

  void onChangedValue2(bool value){
    setState(() {
      value2 = value;
    });
  }

  void onChangedValue3(bool value){
    setState(() {
      value3 = value;
    });
  }

  void onChangedValue4(bool value){
    setState(() {
      value4 = value;
    });
  }

  void onChangedValue5(bool value){
    setState(() {
      value5 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          body:
          ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(width: 420,height: 130, color: Color.fromRGBO(107, 119, 214, 1),
                        child:Row( crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('الإشعارات',style: TextStyle(fontSize: 23,color: Colors.white,),) ,
                            SizedBox(width: 15,),
                            IconButton(alignment: AlignmentDirectional.centerStart,
                              padding: EdgeInsets.symmetric(horizontal: 0),
                              onPressed: () {
                                Navigator.push(context ,MaterialPageRoute(builder: (context) =>(BottomNavScreen()),));
                              },
                              icon: (Icon(Icons.arrow_forward_ios,color: Colors.white)
                              ),
                            ),
                          ],

                        )

                    ),
                    SizedBox(height: 15,),
                    Row(children: [new Switch(value: value1, onChanged: onChangedValue,activeColor: Color.fromRGBO(107, 119, 214, 1),),
                      SizedBox(width: 220,),
                      Column(
                          children: [
                            Text('تفعيل الاشعارات',style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                          ])],),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 315,),
                          SizedBox(width: 80, child:Text('الاشعارات مفعلة',style: new TextStyle(fontSize: 15.0,)),),
                        ]
                    ),
                    SizedBox(height: 10,),
                    Container(width: 430, height: 2, color: Color.fromRGBO(244, 244, 247, 1)),


                    Row(children: [new Switch(value: value2, onChanged: onChangedValue2,activeColor: Color.fromRGBO(107, 119, 214, 1),),
                      SizedBox(width: 277,),
                      Column(
                          children: [
                            Text('الأذونات',style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                          ])],),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 315,),
                          SizedBox(width: 80, child:Text('الاشعارات مفعلة',style: new TextStyle(fontSize: 15.0,)),),
                        ]
                    ),
                    SizedBox(height: 10,),
                    Container(width: 430, height: 2, color: Color.fromRGBO(244, 244, 247, 1)),


                    Row(children: [new Switch(value: value3, onChanged: onChangedValue3,activeColor: Color.fromRGBO(107, 119, 214, 1),),
                      SizedBox(width: 220,),
                      Column(
                          children: [
                            Text('التحديث التلقائي',style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                          ])],),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 320,),
                          SizedBox(width: 80, child:Text('الاشعارات مفعلة',style: new TextStyle(fontSize: 15.0,)),),
                        ]
                    ),
                    SizedBox(height: 10,),
                    Container(width: 430, height: 2, color: Color.fromRGBO(244, 244, 247, 1)),




                    Row(children: [new Switch(value: value4, onChanged: onChangedValue4,activeColor: Color.fromRGBO(107, 119, 214, 1),),
                      SizedBox(width: 285,),
                      Column(
                          children: [
                            Text('الاهتزاز',style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                          ])],),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 315,),
                          SizedBox(width: 80, child:Text('الاشعارات مفعلة',style: new TextStyle(fontSize: 15.0,)),),
                        ]
                    ),
                    SizedBox(height: 10,),
                    Container(width: 430, height: 2, color: Color.fromRGBO(244, 244, 247, 1)),

                    Row(children: [new Switch(value: value5, onChanged: onChangedValue5,activeColor: Color.fromRGBO(107, 119, 214, 1),),
                      SizedBox(width: 285),
                      Column(
                          children: [
                            Text('الصوت',style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),

                          ])
                    ],),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: 315,),
                          SizedBox(width: 80, child:Text('الاشعارات مفعلة',style: new TextStyle(fontSize: 15.0,)),),
                        ]
                    ),

                    SizedBox(height: 10,),

                  ],
                ),

              ])
      ),);
  }
}