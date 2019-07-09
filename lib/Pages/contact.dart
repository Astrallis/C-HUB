import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:animap/drawer.dart';
import 'package:animap/constants.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1b1b1b),
        elevation: 0,
        title: Text(
            "Contact Details",
            textAlign: TextAlign.center,
          ),
        centerTitle: true,
      ),

      backgroundColor: Color(0xff1b1b1b),
      drawer: ConatusDrawer(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Container(
                    height: 200,
                    width: 200,
                    child: Image.asset("assets/conatus2.png"),
                  ),
                ),
              ),
              Container(
                width: consta.w,
                height: 70,
                color: Colors.black,

                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: 10,width: 10, decoration:BoxDecoration(shape: BoxShape.circle,color:Colors.white)),
                      Container(width: consta.w-200,
                          child: Text("We would love to hear from you",style: TextStyle(fontSize: 25,color:Colors.white,fontWeight: FontWeight.bold,wordSpacing: 2),textAlign: TextAlign.center,)),
                      Container(height: 10,width: 10, decoration:BoxDecoration(shape: BoxShape.circle,color:Colors.white)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Container(
                  width: consta.w,
                  height: 70,

                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                       Icon(Icons.call,color: Colors.white,size: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text("Call us on:",style: TextStyle(fontSize: 21,color:Colors.white,fontWeight: FontWeight.bold,wordSpacing: 2),textAlign: TextAlign.center,),
                        ),
                        Container(width: 150,child: Text("7007799127  8751244551",style: TextStyle(fontSize: 21,color:Colors.white,wordSpacing: 2),textAlign: TextAlign.center,)),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: Container(
                  width: consta.w,


                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.mail,color: Colors.white,size: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0,right: 8.0),
                          child: Text("Email:",style: TextStyle(fontSize: 21,color:Colors.white,fontWeight: FontWeight.bold,wordSpacing: 2),textAlign: TextAlign.center,),
                        ),
                        Container(width: 200,child: Text("teamconatus@gmail.com",style: TextStyle(fontSize: 17,color:Colors.white,wordSpacing: 2),textAlign: TextAlign.center,)),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: Container(
                  width: consta.w,


                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.location_city,color: Colors.white,size: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0,right: 8.0),
                          child: Text("Address:",style: TextStyle(fontSize: 21,color:Colors.white,fontWeight: FontWeight.bold,wordSpacing: 2),textAlign: TextAlign.center,),
                        ),
                        Container(width: 250,child: Text("Ajay Kumar Garg Engineering College, Ghaziabad, Hapur Bypass, U.P, PIN:201009",style: TextStyle(fontSize: 15,color:Colors.white,wordSpacing: 2),textAlign: TextAlign.center,)),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:40.0),
                child: Container(
                  width: consta.w,


                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(MaterialCommunityIcons.getIconData("facebook"),color: Colors.white,size: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text("www.facebook.com/conatus.akg",style: TextStyle(fontSize: 21,color:Colors.white,wordSpacing: 2),textAlign: TextAlign.center,),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Container(
                  width: consta.w,


                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(MaterialCommunityIcons.getIconData("instagram"),color: Colors.white,size: 25,),
                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text("www.instagram.com/conatus.akg",style: TextStyle(fontSize: 21,color:Colors.white,wordSpacing: 2),textAlign: TextAlign.center,),
                        ),

                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
