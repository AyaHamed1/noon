import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noon/Screens/NewAdd.dart';

class Addresses extends StatefulWidget {
  @override
  _AddressesState createState() => _AddressesState();
}

class _AddressesState extends State<Addresses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: <Widget>[
                    Icon(Icons.location_on, color: Colors.black38, size: 20,),
                    SizedBox(width: 5,),
                    Text('Home', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    Expanded(child: SizedBox(),),
                    Icon(Icons.create, size: 15, color: Colors.black38,),
                    SizedBox(width: 5,),
                    Text('Edit'),
                    SizedBox(width: 15,),
                    Icon(Icons.delete, color: Colors.black38, size: 20,),
                    Text('Delete'),
                  ],),
                ),
                Container(height: 1, width: MediaQuery.of(context).size.width, decoration: BoxDecoration(
                    color: Colors.grey[300]
                ),),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(children: <Widget>[
                        Text('Name', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey[500]),),
                        SizedBox(width: 100,),
                        Text('Aya Hamed', style: TextStyle(fontSize: 15,),
                        ),],),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row( mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                        Container(height: 125, child: Text('Address',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey[500]),),),
                        SizedBox(width: 80,),
                        Container(
                          width: 200,
                          height: 125,
                          child: Text('بيت رقم 35 شارع مسجد النقيطي متفرع من احمد ماهر، Masged AlNukaiti - Mansoura Qism 2 - Mansoura - Dakahlia Governate',
                            style: TextStyle(fontSize: 15,),
                            textAlign: TextAlign.left,),),
                        ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row( mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text('Mobile Number',
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey[500]),),
                          SizedBox(width: 30,),
                          Text('+201065593103',
                              style: TextStyle(fontSize: 15,),
                              textAlign: TextAlign.left,),
                        ],),
                    ),
                  ],),
              ],),
            ),
          ),
          Expanded(child: SizedBox(),),
          InkWell(  onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => NewAdd())); },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(color: Colors.blue[800],),
              child: Center(
                  child: Text('ADD A NEW ADDRESS', textAlign: TextAlign.center, style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white
                  ),)),
            ),
          ),
        ],
      ),
    );
  }
}
