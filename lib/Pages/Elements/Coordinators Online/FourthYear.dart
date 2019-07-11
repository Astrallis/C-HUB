import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:animap/Pages/aboutCoordinator.dart';
import 'package:animap/Pages/models/Coordinator_model.dart';


class FourthYear extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Column(
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(top: height/(35.23529313*2)),
            child: Container(
              width: width,
              child: StreamBuilder(
                  stream: Firestore.instance
                      .collection('4th year')
                      .orderBy('name')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData)
                      return Scaffold(
                        backgroundColor: Colors.red,
                        body: CircularProgressIndicator(),
                      );
                    return Container(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: height/23.49019542/2,bottom: height/23.49019542/2 ),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0),
                                  child: Container(
                                      width: 6,
                                      height: height/14.09411725,
                                      color: Color(0xff860000)),
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.only(left: 10),
                                  child: Text(
                                    "4th YEAR",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: height/23.49019542,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          for (int i = 0;
                          i < snapshot.data.documents.length;
                          i = i + 2)
                            Padding(
                              padding: EdgeInsets.only(top: height/(35.23529313*2)+10 ),
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: width/42.35293999, left: width/42.35293999),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            new MaterialPageRoute(
                                                builder: (context) => new AboutCoordinator(
                                                    coordinatorModel: new CoordinatorModel(
                                                        snapshot
                                                            .data
                                                            .documents[
                                                        i]
                                                        [
                                                        'name']
                                                            .toString(),
                                                        snapshot
                                                            .data
                                                            .documents[
                                                        i]
                                                        [
                                                        'img']
                                                            .toString(),
                                                        i,snapshot.data.documents[i]['abt'].toString(),snapshot.data.documents[i]['mail'].toString(),snapshot.data.documents[i]['ocp'].toString(),4))));
                                      },
                                      child: Container(
                                        color: Color(0x000000),
                                        //height: height/35.23529313*20,
                                        width: (width - 80) / 2,
                                        child: Column(
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                              EdgeInsets.all(width/42.35293999),
                                              child: Hero(
                                                tag: 'dash' +
                                                    i.toString()+4.toString(),
                                                child: Container(
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Positioned(child: CircularProgressIndicator(backgroundColor: Colors.white,),
                                                        right: width/(4.235293999*2)-2*width/42.35293999,top:width/(4.235293999*2),),
                                                      CircleAvatar(
                                                        backgroundColor: Color(0x00000000),
                                                        backgroundImage:
                                                        NetworkImage(snapshot
                                                            .data
                                                            .documents[
                                                        i]
                                                        ['img']
                                                            .toString(),),
                                                        radius: width/(4.235293999*2),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              EdgeInsets.only(top: height/(35.23529313*4) ),
                                              child: Text(snapshot
                                                  .data
                                                  .documents[i]
                                              ['name']
                                                  .toString(),
                                                style: TextStyle(color: Colors.white,fontSize: height/35.23529313 -2,),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              EdgeInsets.only(
                                                  top: height/(35.23529313*5)*2),
                                              child: Text(snapshot
                                                  .data
                                                  .documents[i]['ocp']
                                                  .toString(),
                                                style: TextStyle(color: Colors.white54,fontSize: height/35.23529313 -5,),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: height/35.23529313*7,
                                    width: 1,
                                    color: Color(0xff860000),
                                  ),
                                  if (i != 14)
                                    Padding(
                                      padding: EdgeInsets.only(
                                          right: width/52.94117499, left: width/42.35293999),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              new MaterialPageRoute(
                                                  builder: (context) => new AboutCoordinator(
                                                      coordinatorModel: new CoordinatorModel(
                                                          snapshot
                                                              .data
                                                              .documents[i +
                                                              1]
                                                          [
                                                          'name']
                                                              .toString(),
                                                          snapshot
                                                              .data
                                                              .documents[i +
                                                              1]
                                                          [
                                                          'img']
                                                              .toString(),
                                                          i + 1,snapshot.data.documents[i+1]['abt'].toString(),snapshot.data.documents[i+1]['mail'].toString(),snapshot.data.documents[i+1]['ocp'].toString(),4))));
                                        },
                                        child: Container(
                                            color: Color(0x00000000),
                                            //height: height/35.23529313*10,
                                            width:
                                            (width - 80) / 2,
                                            child: Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                  EdgeInsets.all(
                                                      width/42.35293999),
                                                  child: Hero(
                                                    tag: 'dash' +
                                                        (i + 1)
                                                            .toString()+4.toString(),
                                                    child:
                                                    Container(
                                                      child: Stack(
                                                        children: <Widget>[
                                                          Positioned(child: CircularProgressIndicator(backgroundColor: Colors.white,),
                                                            right: width/(4.235293999*2)-2*width/42.35293999,top:width/(4.235293999*2),),
                                                          CircleAvatar(
                                                            backgroundColor: Color(0x00000000),
                                                            backgroundImage: NetworkImage(snapshot
                                                                .data
                                                                .documents[
                                                            i + 1]
                                                            ['img']
                                                                .toString()),
                                                            radius: width/(4.235293999*2),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                  EdgeInsets.only(
                                                      top: height/35.23529313/4),
                                                  child: Text(snapshot
                                                      .data
                                                      .documents[i +
                                                      1]['name']
                                                      .toString(),
                                                    style: TextStyle(color: Colors.white,fontSize: height/35.23529313-2,),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                  EdgeInsets.only(
                                                      top: height/35.23529313/2.5),
                                                  child: Text(snapshot
                                                      .data
                                                      .documents[i +
                                                      1]['ocp']
                                                      .toString(),
                                                    style: TextStyle(color: Colors.white54,fontSize: height/35.23529313-5,),
                                                  ),
                                                )

                                              ],
                                            )),
                                      ),
                                    ),
                                ],
                              ),
                            )
                        ],
                      ),
                    );
                  }),
            )),

      ],
    );
  }
}