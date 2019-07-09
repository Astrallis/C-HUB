import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class DOC extends StatelessWidget{
  _launchURL(String s) async {
    if (await canLaunch(s)) {
      await launch(s);
    } else {
      throw 'Could not launch $s';
    }
  }
  @override

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
        backgroundColor:Colors.black,
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(

              floating: false,
              pinned: false,
              backgroundColor: Color(0x00000000),
              expandedHeight: height/1.761764656,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: EdgeInsets.only(top: height/1.761764656/400),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: Colors.black,
                        ),
                      ),
                      Container(
                          height:height/1.761764656/4*3 ,
                          child: Image.asset("assets/doc logo.png")),
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
              itemExtent: height/0.454648943,
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
                                          "D.O.C : Dawn Of Crisis",
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
                                        "Success is never an accident, it is always the result of a commitment to excellence, intelligent planning, and focused effort. We Team Conatus were successful in conducting \"DOC~ Dawn of Crisis\", the highest participating event of the year with our hard work and enthusiasm. We live by one motto \"We work hard, we party hard, when we go to work, we know what we are doing and we do it to the best of our abilities, and when we party we follow the same rulebook.",
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
                                          "https://scontent.fpat1-1.fna.fbcdn.net/v/t1.0-9/53323489_2216727058384975_7311616681053257728_n.jpg?_nc_cat=109&_nc_oc=AQmXMJCIXgZtyWEy2A_pNdJZzM585j0bpwhXMgp1JS-JoYk4eNBVcWKUa5ZZDrKI6CgQGsEo0RzH2U0ND27sU4Tq&_nc_ht=scontent.fpat1-1.fna&oh=abd3fd0fdf2cf4a52d28ea6432b346f7&oe=5DC10E29"))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 30, left: 15, right: 15),
                                  child: Container(
                                      child: Image.network(
                                          "https://scontent.fpat1-1.fna.fbcdn.net/v/t1.0-9/53806373_2216727211718293_6517968958828576768_n.jpg?_nc_cat=101&_nc_oc=AQkT2d1puy2DAQ2OWel-ybqD9H5L5dG5fyuCaryFx96qQIF4N4D6eTiP85Ve-5pVxGgBv9uRDhz7V51XtNBQ46Fl&_nc_ht=scontent.fpat1-1.fna&oh=7408b436312b033473d4adf00e429dc5&oe=5DB8C346"))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 30, left: 15, right: 15),
                                  child: Container(
                                      child: Image.network(
                                          "https://scontent.fpat1-1.fna.fbcdn.net/v/t1.0-9/54517231_2216727371718277_6490629748232814592_n.jpg?_nc_cat=108&_nc_oc=AQmRHWous7pPpAfsOODRGKWf-Vi_XMxiEmrJq_JiI2iVwDTGq5BC9-HC8XxjbhwdaS0zz1Dw3DWJxEM4s1HWRLyP&_nc_ht=scontent.fpat1-1.fna&oh=5c1dc71e7e73723c0953c431184a0eac&oe=5DB0D805"))),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 50, left: 15, right: 15),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Suggested Videos :",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: height/1.761764656/16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(                                                                     // Video Card Row
                                  padding: EdgeInsets.only(
                                    top: 30, left: 15,),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: <Widget>[
                                        GestureDetector(
                                          onTap: () {
                                            _launchURL(
                                                'https://www.facebook.com/conatus.akg/videos/628719270906456/');
                                          },
                                          child: Card(
                                              elevation: 50,
                                              clipBehavior: Clip.antiAlias,
                                              child: Container(
                                                height: height/1.761764656/2,
                                                width: height/1.761764656/4*3,
                                                child: Stack(
                                                  children: <Widget>[
                                                    Container(
                                                      height: height/1.761764656/2,
                                                      width: height/1.761764656/4*3,
                                                      color: Colors.black26,
                                                    ),
                                                    Center(
                                                      child: Icon(Icons.play_circle_outline,size: 50,color:Colors.white),
                                                    ),
                                                    Positioned(bottom: 0,
                                                      child: Container(
                                                        height: 60,
                                                        width: height/1.761764656/4*3,
                                                        color: Color(0xaa000000),
                                                        child: Center(child: Text("DOC Final intro",style: TextStyle(color:Colors.white,fontSize: 18),)),
                                                      ),
                                                    ),

                                                  ],
                                                ),

                                                decoration: BoxDecoration(color: Color(0xff1b1b1b),
                                                    image: DecorationImage(image: NetworkImage("https://scontent.fluh2-1.fna.fbcdn.net/v/t1.0-9/53399060_2206483766075971_9128620200697004032_n.jpg?_nc_cat=109&_nc_oc=AQnYqEp9t6KIVnuRN7Fywxrq-nfqBmO1aOyqaTSecmb9f4WnS0-wrLc2dIvMwYFeORxwGQ6aufWHuz7AIRJHV4Pn&_nc_ht=scontent.fluh2-1.fna&oh=5ba94d84f74489749be54daaabd63c0a&oe=5D7CD46B"),fit: BoxFit.fitHeight)
                                                ),
                                              )
                                          ),
                                        ), Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: GestureDetector(
                                            onTap: () {
                                              _launchURL(
                                                  'https://www.facebook.com/conatus.akg/videos/317960052256721/');
                                            },
                                            child: Card(
                                                elevation: 50,
                                                clipBehavior: Clip.antiAlias,
                                                child: Container(
                                                  height: height/1.761764656/2,
                                                  width: height/1.761764656/4*3,
                                                  child: Stack(
                                                    children: <Widget>[
                                                      Container(
                                                        height: height/1.761764656/2,
                                                        width: height/1.761764656/4*3,
                                                        color: Colors.black26,
                                                      ),
                                                      Center(
                                                        child: Icon(Icons.play_circle_outline,size: 50,color:Colors.white),
                                                      ),
                                                      Positioned(bottom: 0,
                                                        child: Container(
                                                          height: 60,
                                                          width: height/1.761764656/4*3,
                                                          color: Color(0xaa000000),
                                                          child: Center(child: Text("DOC Teaser",style: TextStyle(color:Colors.white,fontSize: 18),)),
                                                        ),
                                                      ),

                                                    ],
                                                  ),

                                                  decoration: BoxDecoration(color: Color(0xff1b1b1b),
                                                      image: DecorationImage(image: NetworkImage("https://scontent.fpat1-1.fna.fbcdn.net/v/t1.0-0/s526x296/53668364_2208314159226265_6740062310410223616_n.jpg?_nc_cat=108&_nc_oc=AQlXY1vckH4Zdp5oQzT9i52J-hGQ-yZfwExwtmSPW8dj7asqRzVO-1R3a39eTNBGy2v253m-9kKFhow6FR9vlqKb&_nc_ht=scontent.fpat1-1.fna&oh=5cc4d99538966eadc8604af080f35127&oe=5DBFF9EE"),fit: BoxFit.fitHeight)
                                                  ),
                                                )
                                            ),
                                          ),



                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                )
              ]))
        ]));
  }
}