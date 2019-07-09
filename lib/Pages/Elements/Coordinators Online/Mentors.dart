import 'package:flutter/material.dart';


import 'package:cloud_firestore/cloud_firestore.dart';


class Mentors extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    
    return Column(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(children: <Widget>[

             Padding(
               padding: EdgeInsets.only(top:height/23.49019542),
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
          "MENTORS",
                  style: TextStyle(
                   fontWeight: FontWeight.bold,
                      fontSize: height/23.49019542,
            color: Colors.white),
               ),
          ),
         Expanded(
           child: Row(
    mainAxisAlignment:
    MainAxisAlignment.end,
    children: <Widget>[
    Padding(
    padding: EdgeInsets.only(
        right: 10),
    child: Container(
         height: height/14.09411725,
    width: height/14.09411725,
        child: Image.asset(
          "assets/godown.gif"),
    ),
    )
    ],
    ),
    ),
    ],
    ),
             ),
        Container(
          width: width,
          child: StreamBuilder(
            stream: Firestore.instance
                .collection('Faculty')
                .orderBy('ocp', descending: true)
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData)
                return Scaffold(
                  backgroundColor: Colors.black,
                  body: CircularProgressIndicator(),
                );
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    for (int i = 0;
                    i < snapshot.data.documents.length;
                    i++)
                      Padding(
                        padding: EdgeInsets.only(right: width/21.17646999, top: height/35.23529313),
                        child: Row(
                          children: <Widget>[
                            Card(
                              color: Color(0xff1b1b1b),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                    EdgeInsets.all(width/21.17646999),
                                    child: Container(
                                      child: Stack(
                                          children: <Widget>[
                                            Positioned(child: CircularProgressIndicator(backgroundColor: Colors.white,),
                                              right: width/4.235293999-2*width/42.35293999,top:width/4.235293999,),
                                            CircleAvatar(
                                              backgroundColor: Color(0x00000000),
                                              backgroundImage: NetworkImage(
                                                  snapshot.data
                                                      .documents[i]['img']
                                                      .toString()),
                                              radius: width/4.235293999,
                                              foregroundColor: Colors.white,
                                            ),]
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: height/35.23529313),
                                    child: Center(
                                      child: Text(
                                        snapshot
                                            .data.documents[i]['name']
                                            .toString(),
                                        style: TextStyle(
                                          fontSize: height/35.23529313,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: height/(35.23529313*4)),
                                    child: Center(
                                      child: Text(
                                        snapshot
                                            .data.documents[i]['ocp']
                                            .toString(),
                                        style: TextStyle(
                                          fontSize: height/35.23529313,
                                          color: Colors.white70,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(top: 7),
                                    child: Center(
                                      child: Text(
                                        snapshot.data
                                            .documents[i]['branch']
                                            .toString(),
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsets.only(left: width/21.17646999, top: height/35.23529313),
                              child: Container(
                                height: height/35.23529313*15,
                                width: 1,
                                color: Color(0xff860000),
                              ),
                            )
                          ],
                        ),
                      ),
                  ],
                ),
              );

            },
          ),
        ),
      ],
    ),)]);
  }
}
