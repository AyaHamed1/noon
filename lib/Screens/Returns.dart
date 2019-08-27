import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Returns extends StatefulWidget {
  @override
  _ReturnsState createState() => _ReturnsState();
}

class _ReturnsState extends State<Returns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).splashColor,
        title: Row( mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(width: 70,),
            Image.asset('assets/logo3.png', height: 35, width: 35,),
            SizedBox(width: 10,),
            Text("n o o n", style: TextStyle(
                color: Colors.black54, fontSize: 23, fontWeight: FontWeight.bold
            ),),
          ],),
      ),
      body: Center(child: Column( crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        SizedBox(height: 40,),
        Image.asset('assets/noreturn.jpeg', height: 300, width: MediaQuery.of(context).size.width,),
        SizedBox(height: 15,),
        Text("We don't see any returns requested", style: TextStyle(
            color: Colors.blueGrey[500], fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10,),
        Text("Need to submit a request? just click on the button below!", style: TextStyle(
            color: Colors.blueGrey[300], fontSize: 13, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 55,),
          Container(height: 45, width: 170,
            decoration: BoxDecoration(color: Colors.blue[900],),
            child: Center(
              child: Text('SUBMIT A REQUEST', style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15
              ),textAlign: TextAlign.center,),
            ),
          ),
      ],),),
    );
  }
}
