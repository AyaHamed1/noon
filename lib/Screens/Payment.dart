import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[70],
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
      body: Center(child: Column(children: <Widget>[
        SizedBox(height: 40,),
        Image.asset('assets/notfound.png', height: 300, width: MediaQuery.of(context).size.width,),
        SizedBox(height: 15,),
        Text("You don't have any saved payment methods.", style: TextStyle(
          color: Colors.blueGrey[500], fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10,),
        Text("Add these in at checkout for a smoother experience!", style: TextStyle(
            color: Colors.blueGrey[300], fontSize: 13, fontWeight: FontWeight.bold),
        ),
      ],),),
    );
  }
}
