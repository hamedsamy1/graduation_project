import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Notif.dart';
import 'setting.dart';
void main() {
  runApp(ProfileScreen());
}
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}
class _ProfileScreenState extends State<ProfileScreen> {

  Widget buildTextForm ({String title,String image,double num}) {
    return
      Container(width: 400, height: 60,
          margin: EdgeInsets.only(left: 5, top: 2, bottom:2, right: 5),
          padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 0),
          decoration: BoxDecoration(
            color: Colors.white,
          ),

          child: Row(mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              IconButton(alignment: AlignmentDirectional.centerStart,
                padding: EdgeInsets.symmetric(horizontal: 0),
                onPressed: () {
                  //Navigator.push(context ,MaterialPageRoute(builder: (context) =>search(),));
                },
                icon: (Icon(Icons.arrow_back_ios,color: Color.fromRGBO(199, 199, 199, 1))
                ),
              ),
              SizedBox(width: num,),
              Text(title, style: TextStyle(fontSize: 21,color: Colors.black, ),),
              Container(width: 50, height: 50, margin: EdgeInsets.only(left:20), decoration: BoxDecoration(color: Color.fromRGBO(243, 243,251, 1), ),
                  child: Image.asset(image) ),

            ],)
      );
  }
  @override

  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        Scaffold(
            body:
            ListView(
                children: <Widget>[
                  Stack(
                      children: <Widget>[
                        Container(
                          width: 430, height: 730, color: Color.fromRGBO(244, 244, 247, 1),),
                        Container(height: 250, width: 420,
                          decoration: BoxDecoration(color:Color.fromRGBO(107, 119, 214, 1),),
                          child: Column(mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              SizedBox(height: 35,),
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    IconButton(
                                      onPressed: () {
                                        Navigator.push(context ,MaterialPageRoute(builder: (context) =>Setting(),));
                                      },
                                      icon: (Icon(Icons.settings,color: Colors.white,)
                                      ),
                                    ),

                                    IconButton(
                                      onPressed: () {
                                        Navigator.push(context ,MaterialPageRoute(builder: (context) =>notifications(),));
                                      },
                                      icon: (Icon(Icons.notifications,color: Colors.white,)
                                      ),
                                    ),
                                    SizedBox(width: 190,),
                                    Text('الملف الشخصي', style: TextStyle(fontSize: 20, color: Colors.white),),
                                  ])
                            ],
                          )
                          ,),

                        Positioned(top: 90 , left: 10, right: 10,
                            child: Container(height: 610,
                              color: Colors.white,
                              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 15,),
                                    Row(mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Column(
                                          children: [
                                            Text("احمد محمد", textAlign: TextAlign.right,
                                              style: TextStyle(
                                                  fontSize: 25,color: Color.fromRGBO(107, 119, 214, 1)
                                              ),),
                                            Text("20 عام", textAlign: TextAlign.right,
                                              style: TextStyle(
                                                  fontSize: 15
                                              ),),
                                          ],
                                        ),

                                        SizedBox(width: 10,),

                                        Container(width: 70, height: 70, child: CircleAvatar(
                                          backgroundImage: AssetImage('assets/profile.jpeg'),
                                        ),
                                        ),
                                        SizedBox(width: 10),

                                      ],

                                    ),
                                    SizedBox(height: 20,),
                                    Container(width: 430, height: 2, color: Color.fromRGBO(244, 244, 247, 1)),
                                    buildTextForm(title: "المواعيد",image:'assets/appointment.png',num:160 ),
                                    Container(width: 430, height: 2, color: Color.fromRGBO(244, 244, 247, 1)),
                                    buildTextForm(title: "تذكير الدواء",image:'assets/bell.png' ,num: 121 ),
                                    Container(width: 430, height: 2, color: Color.fromRGBO(244, 244, 247, 1)),
                                    buildTextForm(title: "الاطباء",image: 'assets/user.png', num: 169 ),
                                    Container(width: 430, height: 2, color: Color.fromRGBO(244, 244, 247, 1)),
                                    buildTextForm(title: "الدفع",image:'assets/credit.png' , num:180),
                                    Container(width: 430, height: 2, color: Color.fromRGBO(244, 244, 247, 1)),
                                    buildTextForm(title: "التقارير الطبية",image:'assets/article.png',num: 110),




                                  ]

                              ),)
                        ),
                      ])
                ])
        ));
  }}