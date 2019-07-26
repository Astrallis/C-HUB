
import 'package:animap/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:animap/bottom nav.dart';



class TeamPage extends StatelessWidget {
  int i;

  _checkInternetConnectivity() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      setI(1);
    } else if (result == ConnectivityResult.mobile) {
      setI(2);
    } else if (result == ConnectivityResult.wifi) {
      setI(3);
    }
  }

  setI(int a) {
    this.i = a;
  }

  getI() {
    return i;
  }

  testWid() {
    _checkInternetConnectivity();
    int g = getI();
    if (g == 2 || g == 3) {
      return true;
    } else
     if(g ==1)
      return false;
     else
       return null;

  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width/423.5293998850261;
    double height = MediaQuery.of(context).size.height/704.705862586474;
    return Scaffold(

        body: Container(
            child: CustomScrollView(slivers: <Widget>[
              SliverAppBar(
                floating: false,
                pinned: true,
                backgroundColor: Color(0xff000000),
                expandedHeight: height*300,
                flexibleSpace: FlexibleSpaceBar(

                  centerTitle: true,
                  background: Image.asset("assets/hp2.jpg",fit: BoxFit.fitWidth,),
                ),
              ),
              SliverFixedExtentList(
                  itemExtent: 500,
                  delegate: SliverChildListDelegate([
                    Container(
                      color: Color(0xff1b1b1b),
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.black,width: width*423.5293998850261,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text("For more details :",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: width*15)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Builder(
                                    builder: (context) => RaisedButton(
                                      onPressed: () {
                                        _checkInternetConnectivity();
                                        if(testWid()!=null)
                                          {
                                            if(testWid())
                                            {
                                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => (HomePage(destoP: DestoP(4)))),);
                                            }
                                            else
                                            {
                                              final snackBar2 = SnackBar(
                                                content: Text('Not Connected'),
                                              );
                                              Scaffold.of(context).showSnackBar(snackBar2);
                                            }
                                          }
                                      },
                                      child: Text("CLICK HERE",style: TextStyle(color: Colors.white),),
                                      color: Color(0xff860000),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                            child: Column(
                              children: <Widget>[

                                Padding(
                                  padding: EdgeInsets.only(top:40,left: 15,right: 15),
                                  child: Text("\"Alone we can do so little together we can do so much.\"", style: TextStyle(color: Colors.white,fontSize: width*30,fontWeight: FontWeight.bold),textAlign: TextAlign.center, ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top:40,left: 15,right: 15),
                                  child: Text("This is what the team stands upon. Team Conatus is the Techno-Managerial society of AKGEC, vigilantly keeping an eye on every technical aspects and inculcating the managerial traits to a new level. No one can whistle symphony all alone, combined efforts define us, we work as a team growing into a new incantation in the conventional era.", style: TextStyle(color: Color(0xf0ffffff),fontSize: width*18,),textAlign: TextAlign.center, ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ]))
            ])));
  }
}


