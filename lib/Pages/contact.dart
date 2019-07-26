import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animap/drawer.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Contact extends StatelessWidget {
  _launchURL(String s) async {
    if (await canLaunch(s)) {
      await launch(s);
    } else {
      throw 'Could not launch $s';
    }
  }
  @override

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width/423.5293998850261;
    double height = MediaQuery.of(context).size.height/704.705862586474;
    return Scaffold(


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
                    height: width*200,
                    width: width*200,
                    child: Image.asset("assets/conatus2.png"),
                  ),
                ),
              ),
              Container(
                width: width*423.5293998850261,
                height: width*70,
                color: Colors.black,

                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(height: width*10,width: width*10, decoration:BoxDecoration(shape: BoxShape.circle,color:Colors.white)),
                      Container(width: width*223.5293998850261,
                          child: Text("We would love to hear from you",style: TextStyle(fontSize: width*25,color:Colors.white,fontWeight: FontWeight.bold,wordSpacing: 2),textAlign: TextAlign.center,)),
                      Container(height: width*10,width: width*10, decoration:BoxDecoration(shape: BoxShape.circle,color:Colors.white)),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top:20),
                    child:Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: <Widget>[
                            Icon(Icons.call,color: Colors.white,size: width*25,),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Container(width: width*110,child: Text("Call us on:",style: TextStyle(fontSize: width*21,color:Colors.white,fontWeight: FontWeight.bold,wordSpacing: 2),textAlign: TextAlign.left,)),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left:2.0),
                                child: Text(" 7007799127  8751244551",style: TextStyle(fontSize: width*21,color:Colors.white,wordSpacing: 2),textAlign: TextAlign.left,),
                              ),

                            )

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.mail,color: Colors.white,size: width*25,),
                              Padding(
                                padding: const EdgeInsets.only(left:8.0,right: 8.0),
                                child: Container(width: width*110,child: Text("Email:",style: TextStyle(fontSize: width*21,color:Colors.white,fontWeight: FontWeight.bold,wordSpacing: 2),textAlign: TextAlign.left,)),
                              ),
                              Expanded(child: Padding(
                                padding: const EdgeInsets.only(left:2.0),
                                child: Text("teamconatus@gmail.com",style: TextStyle(fontSize: width*17,color:Colors.white,wordSpacing: 2),textAlign: TextAlign.left,),
                              )),


                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.location_city,color: Colors.white,size: width*25,),
                              Padding(
                                padding: const EdgeInsets.only(left:8.0,right: 8.0),
                                child: Container(width:width*110,child: Text("Address:",style: TextStyle(fontSize: width*21,color:Colors.white,fontWeight: FontWeight.bold,wordSpacing: 2),textAlign: TextAlign.left,)),
                              ),
                              Expanded(child: Padding(padding: EdgeInsets.only(left: 2),child: Text("Ajay Kumar Garg Engineering College, Ghaziabad, Hapur Bypass, U.P, PIN:201009",style: TextStyle(fontSize: width*17,color:Colors.white,wordSpacing: 2),textAlign: TextAlign.left,))),


                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                          Padding(

                          padding: const EdgeInsets.symmetric(horizontal:8.0),
                          child: GestureDetector(
                            onTap: () {
                              _launchURL(
                                  'https://www.facebook.com/conatus.akg');
                            },
                            child: Card(elevation:100,color: Color(0xff1b1b1b),clipBehavior: Clip.antiAlias,child: Container(height: height*40,width: width*150,child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right:7.0),
                                  child: Icon(MaterialCommunityIcons.getIconData("facebook"),color: Colors.blueAccent,size:width* 35,),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Join us on:",style: TextStyle(color:Colors.white,fontSize: width*9),),
                                    Text("Facebook",style: TextStyle(color:Colors.blue,fontSize: width*16),)
                                  ],
                                )
                              ],
                            ),)),
                          ),
                        ),
                              Padding(

                                padding: const EdgeInsets.symmetric(horizontal:8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    _launchURL(
                                        'https://www.instagram.com/conatus.akg');
                                  },
                                  child: Card(elevation:100,color: Color(0xff1b1b1b),clipBehavior: Clip.antiAlias,child: Container(height: height*40,width: width*150,child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(right:7.0),
                                        child: Icon(MaterialCommunityIcons.getIconData("instagram"),color: Colors.pinkAccent,size:width* 35,),
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text("Follow us on:",style: TextStyle(color:Colors.white,fontSize: width*9),),
                                    Text("Instagram",style: TextStyle(color:Colors.pinkAccent,fontSize: width*16),)
                                        ],
                                      )
                                    ],
                                  ),)),
                                ),
                              )


                            ],
                          ),
                        ),


                      ],
                    )
                  ),
                )
              )


            ],
          ),
        ),
      ),
    );
  }
}
