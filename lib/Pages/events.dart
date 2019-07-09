import 'package:animap/Pages/Elements/Events/CClasses.dart';
import 'package:animap/Pages/Elements/Events/Odyssey.dart';
import 'package:animap/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animap/Pages/Elements/Events/DOC.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(accentColor: Color(0xff860000)),
        home: Scaffold(
          appBar: AppBar(
            title: Text("EVENTS"),
            centerTitle: true,
            backgroundColor: Colors.black,
            elevation: 0,
          ),
          drawer: ConatusDrawer(),
          body: PageView(
            children: <Widget>[
              DOC(),
              CClasses(),
              Odyssey(),
            ],
          ),
        ));
  }
}
