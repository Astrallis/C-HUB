import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:animap/constants.dart';
import 'package:animap/Pages/coordinators.dart';

class CoordinatorSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // Connection.setUpConnectionListener();
    return Scaffold(
      backgroundColor: Color(0xff595959),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: (height-200)/2,
            left: (width-400)/2,
            child: Center(

              child: Container(
                height: 400,
                width: 400,
                child: SplashScreen(
                    seconds: 5,
                    navigateAfterSeconds: Coordinators(),
                    image: new Image.asset("assets/fastsplash.gif",width:400.0,fit: BoxFit.contain,),
                    //   imageBackground: AssetImage("assets/fastsplash.gif"),
                    styleTextUnderTheLoader: new TextStyle(),
                    backgroundColor: Color(0xff595959),
                    photoSize: 100.0,
                    loaderColor: Color(0x00000000)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
