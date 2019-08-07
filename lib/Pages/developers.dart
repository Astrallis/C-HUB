import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animap/bottom nav.dart';

class Dev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text("DEVELOPERS")
        ),
        body: UserProfilePage(),

    );
  }
}

class UserProfilePage extends StatelessWidget {
  @override

  final String _fullNameA = "Sparsh Gupta";
  final String _statusA = "Flutter Developer";
  final String _bioA =
      "\"I am Sparsh Gupta, a Computer Science Student who loves Hustling. I am a part of Team Conatus, the CS/IT society of our college. I have prior hands on experience in management. I am person who believes in one policy \"WORK HARD PLAY HARD\". I take a lot of pride in the work I do and always try to raise the bar. \"";
  final String _urlA="https://9sqetg.sn.files.1drv.com/y4msi1UUEQnCFW-JBhl2Aoj6DOReKJKCXbMavuLjHsIsKJYlXUuUs_Y12nw5yoheehANLbFXwxylDqBn4KzYJqoFm7VdXHLnRl-pgqEqYD1YkX-MgXj1T_giF3dHWPfcps9Cc3biqqrQYctfuVtQXG_Ke4SC_6er82--1FIxYupV4b-L7MTFirirg1Z2kmkiJm2cquF80gkzYEOLqhgyKz5yw?width=651&height=660&cropmode=none";
  final String _fullNameB = "Naimish Verma";
  final String _statusB = "Flutter Developer";
  final String _bioB =
      "\"Hi, Naimish here. My life majorly revolves around internet. I majorly work on projects related to mobile and web development. Learning and exploring new technologies is something which I never miss in my free time. \"";
 final String _urlB="https://firebasestorage.googleapis.com/v0/b/conatusinfo-8341f.appspot.com/o/coordinators%2F1613008.jpeg?alt=media&token=ecd36084-c676-4d30-827c-eca683d6e45a";
  final String _fullNameC = "Amritansh Kumar";
  final String _statusC = "Backend Developer";
  final String _bioC =
      "\"Hi this is Amritansh, I am a simple guy and a true believer of hard work, I try to complete my work with full determination,focus and give my support to my team members and anyone in need. I am an Android developer and currently doing backend developement with laravel.\"";
  final String _urlC="https://firebasestorage.googleapis.com/v0/b/conatusinfo-8341f.appspot.com/o/coordinators%2F1610012.jpeg?alt=media&token=8319ef65-37b8-470e-b41d-d5d3003009ee";


  Widget _buildCoverImage(Size screenSize) {
    return Container(
      height: screenSize.height / 2.6,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/g.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProfileImage(double height,double width,String url) {
    return  Container(
        child: Center(
          child: Container(
              child: Center(
                child: Container(
                  width: width*190,
                  height: width*190,
                  padding: const EdgeInsets.all(2.0), // borde width
                  decoration: new BoxDecoration(
                    color: const Color(0xFF000000), // border color
                    shape: BoxShape.circle,
                  ),

                    child: Stack(
                      children: <Widget>[
                        Positioned(child: CircularProgressIndicator(backgroundColor: Colors.white,),
                          right: width*75,top: width*75,),
                       CircleAvatar(backgroundColor: Color(0x00000000),
                          backgroundImage: NetworkImage(url),
                          radius: width*100,
                        ),
                      ],
                    ),


                ),
              ),
              width: width*205,
              height: width*205,
              padding: const EdgeInsets.all(2.0), // borde width
              decoration: new BoxDecoration(
                color: const Color(0xFF000000), // border color
                shape: BoxShape.circle,
              )
          ),
        ),
        width: width*210,
        height: width*210,
        padding: const EdgeInsets.all(2.0), // borde width
        decoration: new BoxDecoration(
          color: const Color(0xFFFFFFFF), // border color
          shape: BoxShape.circle,
        )
    );
  }

  Widget _buildFullName(String _fullName) {
    TextStyle _nameTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.white,
      fontSize: 28.0,
      fontWeight: FontWeight.w700,
    );

    return Text(
      _fullName,
      style: _nameTextStyle,
    );
  }

  Widget _buildStatus(BuildContext context,String _status) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(
        _status,
        style: TextStyle(
          fontFamily: 'Spectral',
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }





  Widget _buildBio(BuildContext context,String _bio) {
    TextStyle bioTextStyle = TextStyle(
      fontFamily: 'Spectral',
      fontWeight: FontWeight.w400,//try changing weight to w500 if not thin
      fontStyle: FontStyle.italic,
      color: Color(0xFFffffff),
      fontSize: 16.0,
    );

    return Padding(
      padding: const EdgeInsets.only(top:18.0),
      child: Container(

        color: Colors.black,
        padding: EdgeInsets.all(8.0),
        child: Text(
          _bio,
          textAlign: TextAlign.center,
          style: bioTextStyle,
        ),
      ),
    );
  }

  Widget _buildSeparator(Size screenSize) {
    return Container(
      width: screenSize.width / 1.6,
      height: 2.0,
      color: Colors.black54,
      margin: EdgeInsets.only(top: 4.0),
    );
  }

  Widget _buildGetInTouch(BuildContext context,String _fullName) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.only(top: 8.0),
      child: Text(
        "Get in Touch with ${_fullName.split(" ")[0]},",
        style: TextStyle(fontFamily: 'Roboto', fontSize: 16.0,color: Colors.white70),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width/423.5293998850261;
    double height = MediaQuery.of(context).size.height/704.705862586474;
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              _buildCoverImage(screenSize),
              SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[

                      SizedBox(height: screenSize.height / 8 ),
                      Stack(
                        children: <Widget>[
                          Positioned(
                            top: height*100,
                            right: 0,
                            child: Row(mainAxisAlignment: MainAxisAlignment.end,crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  height: 40,width: 40,
                                  child:Image.asset("assets/goright.gif",fit: BoxFit.scaleDown,),

                                )
                              ],
                            ),
                          ),
                          Center(child: _buildProfileImage(height,width,_urlA)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:18.0),
                        child: _buildFullName(_fullNameA),
                      ),
                      _buildStatus(context,_statusA),

                      _buildBio(context,_bioA),
                      _buildSeparator(screenSize),
                      SizedBox(height: 10.0),

                    ],
                  ),
                ),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              _buildCoverImage(screenSize),
              SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: screenSize.height / 8),
                      Stack(
                        children: <Widget>[
                          Positioned(
                            top: height*100,
                            left: 0,
                             child: Container(
                                height: 40,width: 40,
                                child:RotatedBox(quarterTurns: 2,child: Image.asset("assets/goright.gif",fit: BoxFit.scaleDown,)),

                              )
                          ),
                          Positioned(
                              top: height*100,
                              right: 0,
                              child: Container(
                                height: 40,width: 40,
                                child:RotatedBox(quarterTurns: 0,child: Image.asset("assets/goright.gif",fit: BoxFit.scaleDown,)),

                              )
                          ),


                          Center(child: _buildProfileImage(height,width,_urlB)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:18.0),
                        child: _buildFullName(_fullNameB),
                      ),
                      _buildStatus(context,_statusB),

                      _buildBio(context,_bioB),
                      _buildSeparator(screenSize),
                      SizedBox(height: 10.0),


                    ],
                  ),
                ),
              ),
            ],
          ),

          Stack(
            children: <Widget>[
              _buildCoverImage(screenSize),
              SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: screenSize.height / 8),
                      Stack(
                        children: <Widget>[
                          Positioned(
                            top: height*100,
                            left: 0,
                            child: Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  height: 40,width: 40,
                                  child:RotatedBox(quarterTurns: 2,child: Image.asset("assets/goright.gif",fit: BoxFit.scaleDown,)),

                                )
                              ],
                            ),
                          ),
                          Center(child: _buildProfileImage(height,width,_urlC)),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:18.0),
                        child: _buildFullName(_fullNameC),
                      ),
                      _buildStatus(context,_statusC),

                      _buildBio(context,_bioC),
                      _buildSeparator(screenSize),
                      SizedBox(height: 10.0),


                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}