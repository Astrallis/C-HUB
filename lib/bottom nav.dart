import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmnav/bmnav.dart' as bmnav;
import 'Pages/home.dart';
import 'Pages/events.dart';
import 'Pages/contact.dart';
import 'Pages/TeamPage.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}
class HomePageState extends State<HomePage> {
  int currentTab = 0;
  final List<Widget> screens = [
    Home(), Events(), TeamPage(), Contact(),
  ];
  Widget currentScreen = Home();
  final PageStorageBucket bucket = PageStorageBucket();



  Future<bool> _exitApp(BuildContext context) {
    return showDialog(
      context: context,
      child: new AlertDialog(
        backgroundColor: Color(0xff1b1b1b),
        title: new Text('Do you want to exit this application?',style: TextStyle(color: Colors.white,),textAlign: TextAlign.center,),
        content: Container(
            height: 100,width: 100,color: Color(0x00000000),
          child: Center(
            child: Icon(Icons.exit_to_app,color: Colors.red,size: 100,),
          ),

        ),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No',style: TextStyle(color: Colors.white,),textAlign: TextAlign.center,),
          ),
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Yes',style: TextStyle(color: Colors.white,),textAlign: TextAlign.center,),
          ),
        ],
      ),
    ) ??
        false;
  }
  Widget build(BuildContext ctx) {
    return WillPopScope(
      onWillPop: () => _exitApp(context),
      child: Scaffold(
        backgroundColor: Color(0xff1b1b1b),

        body: PageStorage(child: currentScreen, bucket: bucket),
        bottomNavigationBar: bmnav.BottomNav(
          color: Color(0xff1b1b1b),
          iconStyle: bmnav.IconStyle(onSelectColor: Color(0xff860000), size: 25,onSelectSize: 25,color: Colors.white),
          labelStyle: bmnav.LabelStyle(onSelectTextStyle: TextStyle(color: Color(0xff860000), fontSize: 10), textStyle: TextStyle(fontSize:10, color: Colors.white54) ),

          index: currentTab,
          onTap: (i) {
            setState(() {
              currentTab = i;
              currentScreen = screens[i];
            });
          },
          items: [
            bmnav.BottomNavItem(Icons.home, label: 'Home'),
            bmnav.BottomNavItem(Icons.event, label: 'Events'),
            bmnav.BottomNavItem(Icons.people, label: 'Team'),
            bmnav.BottomNavItem(Icons.contact_phone, label: 'Contact')
          ],
        ),
      ),
    );
  }
}


