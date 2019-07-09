import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animap/drawer.dart';
import 'package:animap/constants.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(drawer: ConatusDrawer(),
      appBar: AppBar(
        title:  Text(
          'Home',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Helvetica",
            fontSize: consta.r / 0.06655555,
          ),
        ),centerTitle: true,backgroundColor:Color(0xff000000),
      ),
      body: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              centerTitle: true,

              floating: false,
              pinned: false,
              backgroundColor: Color(0xff000000),
              expandedHeight: height / 2.81882345,
              flexibleSpace: FlexibleSpaceBar(


                centerTitle: true,
                background: Image.asset(
                  'assets/g.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: height / 0.469803908-200,
              delegate: SliverChildListDelegate(
                [
                  Container(

                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding:  EdgeInsets.only(top:30.0,left: 15),
                          child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(height: 50,width: 6,color: Color(0xff860000),),
                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text("Who We Are",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                             EdgeInsets.only(top: height/23.4901954, left: width/21.17674, right: width/21.17674),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: width/2.17194564,
                                child: Text(
                                    "Conatus is the technical society of Computer Science and Information Technology in Ajay Kumar Garg Engineering College which brings to its students the",
                                    style: TextStyle(
                                      fontSize: consta.r/0.103993056,
                                      color: Color(0xf0ffffff),
                                    )),
                              ),
                              Expanded(
                                child: Padding(
                                    padding: EdgeInsets.only(left: width/52.941175),

                                        child: Image.asset("assets/conatus2.png",fit: BoxFit.scaleDown,)),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: width/21.17674),
                          child: Text(
                              "illumination of the knowledge glow in IT sphere with its marvelous events, workshops, and seminars. Founded on 10th October 2005 Conatus’ functioning is firmly supported by HOD of CSE department, Dr. Sunita Yadav. "
                             ,style: TextStyle(
                                fontSize: consta.r/0.103993056,
                                color: Color(0xf0ffffff),
                              )),
                        ),

                        Padding(
                            padding: EdgeInsets.only(top:height/35.2352931),
                            child: Container(
                              width: width,
                              color: Colors.black,
                              child: Image.asset(("assets/hp1.jpg"))
                            )
                        ),



                        Padding(
                          padding:  EdgeInsets.only(top:30.0,left: 15),
                          child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(height: 50,width: 6,color: Color(0xff860000),),
                              Padding(
                                padding: const EdgeInsets.only(left:8.0),
                                child: Text("What We Do",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: width/21.17674),
                          child: Text(
                          "\nIn the last decade, Conatus has evolved as a technical base for its own members as well as the rest of the college. It has brought to the students the vast unexplored “technical horizon” within their grasp hold. Besides being the first technical society of AKGEC, Conatus leads the technological upfront by organizing a wide range of activities throughout the year.",
                              style: TextStyle(
                                fontSize: consta.r/0.103993056,
                                color: Color(0xf0ffffff),
                              )),
                        ),

                        Padding(
                            padding: EdgeInsets.only(top: height/35.2352931),
                            child: Container(
                                width: width,
                                color: Colors.black,
                                child: Image.asset(("assets/hp1.jpg"))
                            )
                        ),

                      ],
                    ),
                    color: Color(0xff1b1b1b),
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
