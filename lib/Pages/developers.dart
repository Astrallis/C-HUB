import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dev extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Center(
        child: Text('Developer Page', style: TextStyle(
          color: Colors.black,
        ))
      )
    );
  }
}
