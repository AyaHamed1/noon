import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Country extends StatefulWidget {
  @override
  _CountryState createState() => _CountryState();
}

class _CountryState extends State<Country> {
  bool _isChecked = true;
  void onChnaged( bool value ){
    setState(() {
      _isChecked = value;
    });
  }

  Widget _buildRow(String image, String myText, Checkbox icon){
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 15),
      child: Row(children: <Widget>[
        Image.asset(image, height: 25, width: 30,),
        SizedBox(width: 15,),
        Text(myText, style: TextStyle(fontSize: 15),),
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
      body: Column( crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 20, bottom: 15),
          child: Text('Select Country', style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueGrey
          ),),
        ),
          _buildRow("assets/ksa.png", "Saudi Arabia", Checkbox(
            tristate: true, activeColor: Colors.blue, checkColor: Colors.white, value: false,)),
          Container(height: 1, width: MediaQuery.of(context).size.width, decoration: BoxDecoration(
              color: Colors.grey[300]
          ),),
          _buildRow('assets/uaeicon.png', "United Arab Emirates",  Checkbox(
            tristate: true, activeColor: Colors.blue, checkColor: Colors.white, value: false,)),
          Container(height: 1, width: MediaQuery.of(context).size.width, decoration: BoxDecoration(
              color: Colors.grey[300],
          ),),
          _buildRow("assets/EgyptFlag.png", "Egypt", Checkbox(
            activeColor: Colors.blue, checkColor: Colors.white,
            value: _isChecked, onChanged: (bool value){onChnaged(value);},)),
          Container(height: 1, width: MediaQuery.of(context).size.width, decoration: BoxDecoration(
              color: Colors.grey[300]
          ),),
      ],),
    );
  }
}
