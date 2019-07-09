import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animap/constants.dart';
import 'package:animap/Pages/models/Coordinator_model.dart';

class AboutCoordinator extends StatelessWidget{
  @override
  final CoordinatorModel coordinatorModel;
  AboutCoordinator({Key key, @required this.coordinatorModel}): super(key: key);
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(

        child: Column(
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.only(top: height/35.23529313/2),
              child: Row(
                children: <Widget>[
                  Container(
                      child: Center(
                        child: Container(
                            child: Center(
                              child: Container(
                                width: height/35.23529313*10-10,
                                height: height/35.23529313*10-10,
                                padding: const EdgeInsets.all(2.0), // borde width
                                decoration: new BoxDecoration(
                                  color: const Color(0xFF000000), // border color
                                  shape: BoxShape.circle,
                                ),
                                child: Hero(
                                  tag: 'dash'+coordinatorModel.index.toString()+coordinatorModel.year.toString(),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(coordinatorModel.imgurl),
                                    radius: height/35.23529313*10/2,
                                  ),
                                ),

                              ),
                            ),
                            width: height/35.23529313*10+5,
                            height: height/35.23529313*10+5,
                            padding: const EdgeInsets.all(2.0), // borde width
                            decoration: new BoxDecoration(
                              color: const Color(0xFF000000), // border color
                              shape: BoxShape.circle,
                            )
                        ),
                      ),
                      width: height/35.23529313*10+10,
                      height: height/35.23529313*10+10,
                      padding: const EdgeInsets.all(2.0), // borde width
                      decoration: new BoxDecoration(
                        color: const Color(0xFFFFFFFF), // border color
                        shape: BoxShape.circle,
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.only(left:width/42.35293999),
                    child: Container(
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: height/35.23529313*1.5),
                              child: Container(width: width/42.35293999*20,child: Text(coordinatorModel.name,textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontSize: height/35.23529313*1.5,),)),
                            ),
                            if(coordinatorModel.year==3)
                              Padding(
                                padding: EdgeInsets.all(height/35.23529313/2),
                                child: Text("Coordinator "+coordinatorModel.year.toString()+"rd Year",style: TextStyle(color: Colors.white70, fontSize: height/35.23529313-2,),),
                              ),
                            if(coordinatorModel.year==4)
                              Padding(
                                padding: EdgeInsets.all(height/35.23529313/2),
                                child: Text("Coordinator "+coordinatorModel.year.toString()+"th Year",style: TextStyle(color: Colors.white70, fontSize: height/35.23529313-2,),),
                              ),

                            Padding(
                              padding: EdgeInsets.all(height/35.23529313/2),
                              child: Text(coordinatorModel.ocp,style: TextStyle(color: Colors.white),),
                            ),
                          ],
                        ),
                      )
                    ),
                  )
                ],
              )
            ),

            Center(

              child: Padding(
                padding: EdgeInsets.only(top:height/35.23529313*2,right: width/42.35293999*2,left: width/42.35293999*2),
                child: Container(child: Text(coordinatorModel.abt,textAlign:TextAlign.center,style: TextStyle(color: Color(0xcfffffff),fontSize: 17),)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:height/35.23529313),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top:height/35.23529313/2,bottom: height/35.23529313/2,left: width/42.35293999),
                    child: Container(
                      child: Icon(Icons.mail_outline,color: Colors.white54,),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(height/35.23529313/2),
                    child: Text(coordinatorModel.mail,style: TextStyle(color: Colors.white54, fontSize: height/35.23529313-4),),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}