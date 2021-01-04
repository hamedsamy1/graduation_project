import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'bottom_nav.dart';
void main() {
  runApp(Setting());
}
class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}


class _SettingState extends State<Setting> {

  File _image;
  @override
  void initState() {
    super.initState();
  }

  void open_camera()
  async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });

  }
//  void open_gallery()
//  async {
//    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
//    setState(() {
//      _image = image;
//    });
//  }
  Widget buildTextForm({String hint, bool secure}) {
    return   Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child:
        TextFormField (textAlign: TextAlign.right, obscureText: secure,
            decoration: InputDecoration(fillColor:Color.fromRGBO(107, 119, 214, 1),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.white,),),
              icon: Icon(
                Icons.edit,
                size: 18,
                color: Color.fromRGBO(107, 119, 214, 1),
              ),
              hintText: hint,hintStyle: TextStyle( color: Color.fromRGBO(107, 119, 214, 1),fontSize: 18.0,fontWeight: FontWeight.bold),

            )
        ));
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
                            Text('إعدادات الملف الشخصي',style: TextStyle(fontSize: 23,color: Colors.white,),) ,
                            SizedBox(width: 25,),
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
                    SizedBox(height: 20,),
                    Center(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              decoration: new BoxDecoration(
                                color: Colors.black12,
                                shape: BoxShape.circle,
                              ),
                              height: 90.0,
                              width: 90.0,
                              child: _image == null ?  CircleAvatar(
                                backgroundImage: AssetImage('assets/profile.jpeg'),
                              ): Image.file(_image),),
                            SizedBox(height: 20,),
                            FlatButton(
                              color: Color.fromRGBO(240, 241, 248, 1),
                              child: Text("تغيير صورة الملف الشخصي", style: TextStyle(fontSize: 17,color: Color.fromRGBO(113, 128, 219, 1),),),
                              onPressed: (){
                                open_camera();
                              },),
//                    FlatButton(
//                      color: Color.fromRGBO(240, 241, 248, 1),
//
//                      child:Text("معرض الصور", style: TextStyle(fontSize: 17,color: Color.fromRGBO(113, 128, 219, 1),),),
//                      onPressed: (){
//                        open_gallery();
//                      },
//                    )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),

                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('الاسم (يكون هذا الاسم الظاهر لكل الناس)     ',style: new TextStyle( color: Colors.black,fontSize: 15.0,)),
                          buildTextForm(hint: 'احمد محمد',secure:false,),
                        ]
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('رقم الهاتف    ',style: new TextStyle( color: Colors.black,fontSize: 15.0,)),
                          buildTextForm(hint: '01234857625',secure:false,),
                        ]
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('كلمة المرور    ',style: new TextStyle(color: Colors.black,fontSize: 15.0,)),
                          buildTextForm(hint: '***********',secure:true,),
                        ]
                    ),
                    ListTile(

                      title: Text('الدعم والمساعدة', textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15
                        ),),
                      onTap: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => Setting(),));
                      },
                    ),
                    ListTile(

                      title: Text('تسجيل الخروج', textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),),
                      onTap: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => Setting(),));
                      },
                    ),
                  ],
                ),
              ])
      ),);
  }
}


