import 'package:flutter/material.dart';

class Sort extends StatefulWidget {
  @override
  _SortState createState() => _SortState();
}

class _SortState extends State<Sort> {
  Widget _buildRow(String myText, Icon icon, FontWeight font){
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, bottom: 10, right: 15),
      child: Row(children: <Widget>[
        SizedBox(width: 15,),
        Text(myText, style: TextStyle(fontSize: 15, fontWeight: font),),
        Expanded(child: SizedBox(width: 100,),),
        icon,
      ],),
    );
  }
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
      body: Column(children: <Widget>[
        SizedBox(height: 10,),
        _buildRow("Popularity", Icon(Icons.check_circle, color: Colors.blue,), FontWeight.bold),
        _buildRow("Price : High to Low", Icon(Icons.check_circle_outline, color: Colors.grey,), FontWeight.normal),
        _buildRow("Price : Low to High", Icon(Icons.check_circle_outline, color: Colors.grey,), FontWeight.normal,),
      ],),
    );
  }
}
