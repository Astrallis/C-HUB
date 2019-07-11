
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animap/Pages/models/Coordinator_model.dart';

class AboutCoordinator extends StatelessWidget{
  @override

  final CoordinatorModel coordinatorModel;
  AboutCoordinator({Key key, @required this.coordinatorModel}): super(key: key);


  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width/423.5293998850261;
    double height = MediaQuery.of(context).size.height/704.705862586474;

    return Scaffold(
            appBar: AppBar(backgroundColor: Colors.black,),
            backgroundColor: Colors.black,
            body: SingleChildScrollView(

              child: Column(
                children: <Widget>[
                  Padding(
                    padding:  EdgeInsets.only(top:10),
                    child: Row(
                      children: <Widget>[
                        Container(
                            child: Center(
                              child: Container(
                                  child: Center(
                                    child: Container(
                                      width: width*190,
                                      height: width*190,
                                      padding: const EdgeInsets.all(2.0), // borde width
                                      decoration: new BoxDecoration(
                                        color: const Color(0xFF000000), // border color
                                        shape: BoxShape.circle,
                                      ),
                                      child: Hero(
                                        tag: 'dash'+coordinatorModel.index.toString()+coordinatorModel.year.toString(),
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage(coordinatorModel.imgurl),
                                          radius: width*100,
                                        ),
                                      ),

                                    ),
                                  ),
                                  width: width*205,
                                  height: width*205,
                                  padding: const EdgeInsets.all(2.0), // borde width
                                  decoration: new BoxDecoration(
                                    color: const Color(0xFF000000), // border color
                                    shape: BoxShape.circle,
                                  )
                              ),
                            ),
                            width: width*210,
                            height: width*210,
                            padding: const EdgeInsets.all(2.0), // borde width
                            decoration: new BoxDecoration(
                              color: const Color(0xFFFFFFFF), // border color
                              shape: BoxShape.circle,
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:10),
                          child: Container(
                            child: Center(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 30),
                                    child: Container(width: width*200,child: Text(coordinatorModel.name,textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontSize: width*30,),)),
                                  ),
                                  if(coordinatorModel.year==3)
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text("Coordinator "+coordinatorModel.year.toString()+"rd Year",style: TextStyle(color: Colors.white70, fontSize:width*18,),),
                                    ),
                                  if(coordinatorModel.year==4)
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text("Coordinator "+coordinatorModel.year.toString()+"th Year",style: TextStyle(color: Colors.white70, fontSize: width*18,),),
                                    ),

                                  Padding(
                                    padding: EdgeInsets.all(10),
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
                      padding: EdgeInsets.only(top:40,right: 20,left: 20),
                      child: Container(child: Text(coordinatorModel.abt,textAlign:TextAlign.center,style: TextStyle(color: Color(0xcfffffff),fontSize: width*17),)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top:20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top:10,bottom: 10,left: 10),
                          child: Container(
                            child: Icon(Icons.mail_outline,color: Colors.white54,),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(coordinatorModel.mail,style: TextStyle(color: Colors.white54, fontSize: width*16),),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: GestureDetector(
                      onTap:(){ Navigator.pop(context,true);},
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          height: height*50,width: width*423.5293998850261,
                          color: Color(0xff860000),
                          child: Center(
                            child: Text(
                              "Click here to return to Team Page",
                                  style: TextStyle(
                                    color: Colors.white,
                                  )

                            ),
                          ),
                        ),
                      ),
                    ),
                  )


                ],
              ),
            ),


    );
  }
}