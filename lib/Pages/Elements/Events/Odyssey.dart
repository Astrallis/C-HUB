import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Odyssey extends StatelessWidget{
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
                  padding:  EdgeInsets.only(top: height/1.761764656/400),
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
                          child: Image.asset("assets/odyssey.png")),
                      Expanded(
                          child: Container(
                            color: Colors.black,
                          )
                      ),
                    ],
                  ),
                ),
              )),
          SliverFixedExtentList(
              itemExtent: height*2.4,
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
                                padding: EdgeInsets.only(top: height/1.761764656/5/8),
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
                                          "ODYSSEY",
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
                                        "Finally, here comes the time when we, Team Conatus, proudly unveil the most awaited technical event of our College ODYSSEY - The Ultimate Showdown.\n\nOur Team has always been successful in presenting the events with the maximum participation of the college students.\n\nContinuing the same legacy, we announce an exciting series of events which will surely brighten your monotonous college life with a tincture of enjoyment, competence and excellence.",
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: height/1.761764656/400*17),
                                      ),
                                    ),
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 30, left: 15, right: 15),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(right:8.0),
                                            child: Container(
                                                child: Image.network(
                                                    "https://scontent.fluh2-1.fna.fbcdn.net/v/t1.0-9/28468178_1716600018397684_6375147406312341504_n.jpg?_nc_cat=102&_nc_oc=AQkMSz0VzfvBdt0Y3OWpfD89r74BN0K7nCOiMJSbWWvKBz8I9FOwLQg35fA8v63SGUx9KDYROuzf3EfwmNwx9eIU&_nc_ht=scontent.fluh2-1.fna&oh=cac7082fb41981360439e844a44369d3&oe=5DA785AB")),
                                          )
                                      ),
                                      Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left:8.0),
                                            child: Container(
                                                child: Image.network(
                                                    "https://scontent.fluh2-1.fna.fbcdn.net/v/t1.0-9/28472222_1717676398290046_2817218690401959936_n.jpg?_nc_cat=111&_nc_oc=AQnWIE79h8u585Sp0eBUwg42tqmzSaxgNaQz4o3ZVToeCDRsGL6Zeil7OOf_JmCQrVNTjPBJl5q0LY3z_982Uoku&_nc_ht=scontent.fluh2-1.fna&oh=ff4c884e8662be4c84b8d368ac27561f&oe=5DBF98C9")),
                                          )
                                      )

                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 15, left: 15, right: 15),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(right:8.0),
                                            child: Container(
                                                child: Image.network(
                                                    "https://scontent.fluh2-1.fna.fbcdn.net/v/t1.0-9/28660663_1719767034747649_6580144778011213824_n.jpg?_nc_cat=110&_nc_oc=AQkKYvUH-LPXM4BE2BuPGX_wOIcFCjJgTNoAQYcszujbudQsNdvA2E0rKTqdiT5KPYyU3gR2stACDWfgDhbgzNuG&_nc_ht=scontent.fluh2-1.fna&oh=730173c06bfb145b96ef30e63c14273c&oe=5DBDD259")),
                                          )
                                      ),
                                      Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left:8.0),
                                            child: Container(
                                                child: Image.network(
                                                    "https://scontent.fluh2-1.fna.fbcdn.net/v/t1.0-9/28795095_1720992487958437_473406688527908864_n.jpg?_nc_cat=107&_nc_oc=AQkYSQP0KyjLMEXns2IZ7GtivosuocbxIdB_blNUlFIYJF5K9S2yIxXQOhvYhx6vxK4eladoiXP72m5sSlah1Xny&_nc_ht=scontent.fluh2-1.fna&oh=ca3a3dfe497ede3f9f4c2a8fd457cc2e&oe=5DB38747")),
                                          )
                                      )

                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 30, left: 15, right: 15),
                                  child: Container(
                                      child: Image.network(
                                          "https://scontent.fluh2-1.fna.fbcdn.net/v/t1.0-9/29027458_1725588610832158_4015840734392352768_n.jpg?_nc_cat=106&_nc_oc=AQkvDbaXq9mpTd-6LffRqds6IExfKOs2UjvUTQNLJIPT9tR9TUtwBoW6ZFKU4fSsf_XJVgnpb3Zpyg-evGtMMlhX&_nc_ht=scontent.fluh2-1.fna&oh=ae56c520113e67ec202972f1a89ce688&oe=5DB10E6F"))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: 30, left: 15, right: 15),
                                  child: Container(
                                      child: Image.network(
                                          "https://scontent.fluh2-1.fna.fbcdn.net/v/t1.0-9/29340490_1731074203616932_6790465108838449152_n.jpg?_nc_cat=108&_nc_oc=AQlabg3PUGlI61cPhalnjZkUQZbf7o2Wgog-mKaNADxjnX3FE3FWRRkmr6B41YkvUaF_E-xSwPMkwpryIluyT6pK&_nc_ht=scontent.fluh2-1.fna&oh=13b1ad0ea48e42e260f55d5fcd973d6d&oe=5D7D9811"))),


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
                                                'https://www.facebook.com/conatus.akg/videos/1714320055292347/');
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
                                                        child: Center(child: Text("Odyssey Trailer",style: TextStyle(color:Colors.white,fontSize: 18),)),
                                                      ),
                                                    ),

                                                  ],
                                                ),

                                                decoration: BoxDecoration(color: Color(0xff1b1b1b),
                                                    image: DecorationImage(image: NetworkImage("https://scontent.fluh2-1.fna.fbcdn.net/v/t1.0-9/29027458_1725588610832158_4015840734392352768_n.jpg?_nc_cat=106&_nc_oc=AQkvDbaXq9mpTd-6LffRqds6IExfKOs2UjvUTQNLJIPT9tR9TUtwBoW6ZFKU4fSsf_XJVgnpb3Zpyg-evGtMMlhX&_nc_ht=scontent.fluh2-1.fna&oh=ae56c520113e67ec202972f1a89ce688&oe=5DB10E6F"),fit: BoxFit.fitHeight)
                                                ),
                                              )
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
        ]))
    ;

  }}