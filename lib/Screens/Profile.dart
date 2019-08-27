import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  Future getPhoto() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }
  void _onPressed(){
    showModalBottomSheet(context: context, builder: (context) {
      return Container(
        height: 150,
        child: Column(children: <Widget>[
          SizedBox(height: 10,),
          InkWell( onTap: (){getImage();},
            child: Container(height: 40, width: 100, decoration: BoxDecoration(color: Colors.blueGrey[400]),
              child: Center(child:Text('Take a picture')),
            ),),
          SizedBox(height: 50,),
          InkWell( onTap: (){getPhoto();},
            child: Container(height: 40, width: 100, decoration: BoxDecoration(color: Colors.blueGrey[400]),
              child: Center(child: Text('Choose a picture')),
            ),),
        ],),
      );
    });
  }

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
          padding: const EdgeInsets.all(15),
          child: Container( decoration: BoxDecoration( color: Colors.grey),
            width: 150, height: 150,
            child: Center(child: _image== null? Text('No Profile Photo'):Image.file(_image, fit: BoxFit.fill,)),
          ),
        ),
        RaisedButton(child: Text('Choose Photo'), onPressed: (){_onPressed();},),
          SizedBox(height: 50,),
          Container( height: 60, width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Aya Hamed', style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20
                ),),
                  SizedBox(height: 3,),
                  Text('ayah.hamed@hotmail.com', style: TextStyle(
                  color: Colors.black54, fontSize: 13,
                ),),
              ],),
          ),),
          SizedBox(height: 15,),
          Container(height: 250, width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(children: <Widget>[

          ],),
          ),
      ],),
    );
  }
}
