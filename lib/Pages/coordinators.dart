import 'package:animap/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'Elements/Coordinators Online/Mentors.dart';
import 'Elements/Coordinators Online/FourthYear.dart';
import 'Elements/Coordinators Online/ThirdYear.dart';


class Coordinators extends StatefulWidget {
  CoordinatorsState createState() => CoordinatorsState();
}

class CoordinatorsState extends State<Coordinators> with SingleTickerProviderStateMixin {

  var firestore = Firestore.instance;

  initState() {
    super.initState();
    CoordinatorsState();
  }

  dispose(){
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width/423.5293998850261;
    double height = MediaQuery.of(context).size.height/704.705862586474;
    return MaterialApp(
            theme: ThemeData(
              accentColor: Color(0xff860000),
            ),
              home: Scaffold(
                drawer: ConatusDrawer(),
                appBar: AppBar(
                  title: Text(
                    'The Team',
                    style: TextStyle(
                      fontFamily: "Helvetica",
                      fontSize: width*25,
                      color: Colors.white
                    ),
                  ),
                  centerTitle: true,
                  backgroundColor: Color(0x00000000),

              ),
            backgroundColor: Colors.black,
            body: Scaffold(
              body: Container(
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverAppBar(
                      floating: false,
                      pinned: false,
                      backgroundColor: Color(0xff000000),
                      expandedHeight: height* 250,
                      flexibleSpace: FlexibleSpaceBar(

                        centerTitle: true,
                        background: Image.asset(
                          'assets/g.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate([
                        Container(
                          color: Color(0xff1b1b1b),
                          child: Column(children: <Widget>[
                            Mentors(),

                            // 4th year Coding start

                            FourthYear(),

                            // 4th year Coding end
                            ThirdYear()

                          ]),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          )
    );



  }
}








