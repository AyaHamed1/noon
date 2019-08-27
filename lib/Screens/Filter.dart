import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  Widget buildCom(String myText){
    return Column(
      children: <Widget>[
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.white, ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(children: <Widget>[
              Text(myText, style: TextStyle(
                  color: Colors.grey[700], fontWeight: FontWeight.bold,
                  fontSize: 15
              ),),
              Expanded(child: SizedBox(width: 100,)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_forward_ios, size: 15,),
              ),
            ],),
          ),
        ),
        Container(height: 1, width: MediaQuery.of(context).size.width, decoration: BoxDecoration(
            color: Colors.grey[300]
        ),),
      ],
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
      body: Column(
        children: <Widget>[
          buildCom("Category"),
          buildCom("Brand"),
          buildCom("Price"),
          buildCom("Colour"),
          buildCom("Seller"),
          Expanded(child: SizedBox(),),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Row(children: <Widget>[
              Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.blue), borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: Text('RESET', textAlign: TextAlign.center, style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue[700]
                    ),)),
              ),
              Expanded(child: SizedBox(),),
              Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(color: Colors.blue[800],),
                child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Text('61 Items', textAlign: TextAlign.center, style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white
                          ),),
                          Expanded(child: SizedBox(),),
                          Text('APPLY', textAlign: TextAlign.center, style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white
                          ),),
                        ],
                      ),
                    )),
              ),
            ],),
          )
        ],
      ),
    );
  }
}
