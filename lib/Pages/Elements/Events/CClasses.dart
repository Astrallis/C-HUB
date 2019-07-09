import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class CClasses extends StatelessWidget{

  @override

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor:Colors.black,
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
              centerTitle: true,
              floating: false,
              pinned: false,
              backgroundColor: Color(0x00000000),
              expandedHeight: height/1.761764656,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: Colors.black,
                          child: Center(
                            child: RotatedBox(
                                quarterTurns: 2,
                                child: Container(
                                  width: width/5.294117499,
                                  child: Image.asset("assets/goright.gif"),
                                )),
                          ),
                        ),
                      ),
                      Container(
                          height:height/1.761764656/4*3 ,
                          child: Image.asset("assets/c classes logo.png")),
                      Expanded(
                        child: Container(
                          color: Colors.black,
                          child: Center(
                            child: RotatedBox(
                                quarterTurns: 0,
                                child: Container(
                                  width: width/5.294117499,
                                  child: Image.asset("assets/goright.gif"),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          SliverFixedExtentList(
              itemExtent: height/0.640641693+50,
              delegate: SliverChildListDelegate([
                Scaffold(
                  backgroundColor: Colors.black,
                  body: Scaffold(
                    backgroundColor: Color(0xff1b1b1b),
                    body: Column(
                      children: <Widget>[
                        Container(
                          width: width,
                          color: Color(0xff1b1b1b),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Container(
                                  height: height/1.761764656/5,
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0),
                                        child: Container(
                                            width: 6,
                                            height: height/1.761764656/8,
                                            color: Color(0xff860000)),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.only(left: 10),
                                        child: Text(
                                          "C Classes",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: height/1.761764656/40*3,
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
                                                height: 50,
                                                width: 50,
                                                child: Image.asset(
                                                    "assets/godown.gif"),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 20, left: 15, right: 15),
                                  child: Center(
                                    child: Container(
                                      child: Text(
                                        "There is a saying, ''Talk is cheap.Show me the Code.'' So here is a chance for you to learn CODING.\n\nCONATUS is organizes C classes for first year students.\n\nSo grab your chance and register as soon as possible as there will be limited number of seats.\n\nPriority is given on first come first serve basis.",
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: height/1.761764656/400*17),
                                      ),
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 30, left: 15, right: 15),
                                  child: Container(
                                      child: Image.network(
                                          "https://scontent.fluh2-1.fna.fbcdn.net/v/t1.0-9/27067072_1677162505674769_9174785051095388879_n.jpg?_nc_cat=101&_nc_oc=AQlBKgPGCi5W7Xd-zjrpRO7UHxgyITY6OuOkkCS590GA4s09QYBViwggCTf0LI87JL-LWa3CHpiL6r7f06vdkK-N&_nc_ht=scontent.fluh2-1.fna&oh=1e929ee20481fe56ca63e3d8fde025a1&oe=5DB0DE11"))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 30, left: 15, right: 15),
                                  child: Container(
                                      child: Image.network(
                                          "https://scontent.fluh2-1.fna.fbcdn.net/v/t1.0-9/26994326_1676509719073381_6364194205564033827_n.jpg?_nc_cat=103&_nc_oc=AQn23QHBqpThoHcbCjtv_2hz09MltVLzGxdab6FRYEDr3a89Hz85cVVwUuk5I8VUlmO0Xt4vBvzqT0pgav2lo3fN&_nc_ht=scontent.fluh2-1.fna&oh=04f89fee99540e84506e7165a610c991&oe=5DC43D99"))),


                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                )
              ]))
        ]));
  }}