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

  Future<bool> _Back(BuildContext context) {
    return showDialog(
      context: context,
      child: new AlertDialog(
        title: new Text('Exit to main App',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
        backgroundColor: Color(0xff1b1b1b),
        //content: new Text('We hate to see you leave...'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('NO',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
          ),
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('YES',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
          ),
        ],
      ),
    ) ??
        false;
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: ()=> _Back(context),
      child: MaterialApp(
            theme: ThemeData(
              accentColor: Color(0xff860000),
            ),
              home: Scaffold(
                appBar: AppBar(
                  title: Text(
                    'The Team',
                    style: TextStyle(
                      fontFamily: "Helvetica",
                      fontSize: width*30,
                    ),
                  ),                    centerTitle: true,backgroundColor: Color(0x00000000),

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
                      expandedHeight: height / 2.81882345,
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
          )),
    );



  }
}








