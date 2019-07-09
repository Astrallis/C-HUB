import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:animap/Pages/developers.dart';


class ConatusDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.0,
      child: Container(
        color: Color(0xff1b1b1b),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Image.asset("assets/conatus2.png",scale: 3,),
            ),
            Container(
              height: 0.4,
              decoration: BoxDecoration(color: Colors.white),
            ),
            ListTile(
              leading: Icon(Icons.developer_mode, color: Colors.white,),
              title: Text("Developement Team", style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Dev()),);
              },
            ),
            _getContainer(),
//
            ListTile(
              leading: Icon(Icons.star, color: Colors.white,),
              title: Text("Rate-Us", style: TextStyle(color: Colors.white)),
              onTap: () {
           //     Navigator.push(context, MaterialPageRoute(builder: (context) => Dev()),);
              },
            ),
            _getContainer(),

          ],
        ),
      ),
    );
  }

  Widget _getContainer() {
    return Container(
      height: 0.2,
      margin: EdgeInsets.only(left: 65.0, top: 7.0),
      decoration: BoxDecoration(color: Colors.white),
    );
  }


  }
