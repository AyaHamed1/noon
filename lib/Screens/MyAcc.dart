import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noon/Screens/Addresses.dart';
import 'package:noon/Screens/Country.dart';
import 'package:noon/Screens/Payment.dart';
import 'package:noon/Screens/Profile.dart';
import 'package:noon/Screens/Returns.dart';
import 'package:noon/Screens/Cart.dart';
import 'package:url_launcher/url_launcher.dart';

class Acc extends StatefulWidget {
  @override
  _AccState createState() => _AccState();
}

class _AccState extends State<Acc> {

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget _buildIcon(Icon icon, String name) {
    return Padding(
        padding: const EdgeInsets.all(19),
        child: Column(children: <Widget>[
          Container(height: 60, width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Theme.of(context).splashColor,
            ),
            child: Center(child: icon),
          ),
          SizedBox(height: 5,),
          Text(name, style: TextStyle(color: Colors.black, fontSize: 13),)
        ],),
    );
  }

  Widget buildCom(Icon icon, String myText){
    return Column(
        children: <Widget>[
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.white, ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: <Widget>[
                icon,
                SizedBox(width: 20,),
                Text(myText, style: TextStyle(
                  color: Colors.blueGrey[800], fontWeight: FontWeight.bold,
                  fontSize: 16
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
  Widget buildDiv(String myText){
    return Padding(
      padding: const EdgeInsets.only(left: 15,top: 10),
      child: Container(
        height: 30, width: MediaQuery.of(context).size.width,
        child: Text(myText, style: TextStyle(
            color: Colors.blueGrey[600], fontSize: 15, fontWeight: FontWeight.bold
        ),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).splashColor,
        title: Container(
          child: Row(children: <Widget>[
            Image.asset('assets/logo3.png', width: 40, height: 40,),
            SizedBox(width: 5,),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Text('Ahlan Aya', style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20
                ),),
                SizedBox(height: 3,),
                Text('ayah.hamed@hotmail.com', style: TextStyle(
                  color: Colors.black54, fontSize: 13,
                ),)
              ],),
            )
          ],),
        ),
      ),
      body: Column(children: <Widget>[
        Container(
          height: 130, width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(children: <Widget>[
            InkWell( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Cart())); },
                child: _buildIcon(Icon(Icons.featured_play_list, size: 25,), 'Orders')),
            InkWell( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Profile())); },
                child: _buildIcon(Icon(Icons.person_outline, size: 25,), 'Profile')),
            InkWell( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Payment())); },
                child: _buildIcon(Icon(Icons.credit_card, size: 25,), 'noon Credits')),
            InkWell( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Cart())); },
                child: _buildIcon(Icon(Icons.favorite_border, size: 25,), 'Wishlist')),
          ],),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height-295,
          decoration: BoxDecoration(
            color: Colors.blueGrey[50]
          ),
          child: ListView(children: <Widget>[
            Container(height: 2, width: MediaQuery.of(context).size.width, decoration: BoxDecoration(
              color: Colors.grey[300]
            ),),
            buildDiv('My ACCOUNT'),
          InkWell( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Addresses())); },
            child: buildCom(Icon(Icons.location_on, color: Colors.yellow,), 'Addresses'),),
            InkWell( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Payment())); },
                child: buildCom(Icon(Icons.credit_card, color: Colors.yellow,), 'Payment')),
            InkWell( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Returns())); },
                child: buildCom(Icon(Icons.settings_backup_restore, color: Colors.yellow,), 'Returns')),
            buildDiv('Settings'),
            InkWell( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Country())); },
                child: buildCom(Icon(Icons.public, color: Colors.yellow,), 'Country')),
            buildCom(Icon(Icons.outlined_flag, color: Colors.yellow,), 'Language'),
            buildDiv('REACH OUT TO US'),
            InkWell( onTap:(){_launchURL("https://help.noon.com/hc/en-us");},
                child: buildCom(Icon(Icons.info, color: Colors.yellow,), 'Help')),
            buildCom(Icon(Icons.call, color: Colors.yellow,), 'Contact Us'),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(children: <Widget>[
                      Icon(Icons.power_settings_new),
                      SizedBox(width: 20,),
                      Text('Sign Out', style: TextStyle(fontSize: 16))
                    ],),
                  ),
                  Container(height: 1, width: MediaQuery.of(context).size.width, decoration: BoxDecoration(
                      color: Colors.grey[300]
                  ),),
                ],
              ),
            ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell( onTap: (){_launchURL("https://www.facebook.com/noon.eg/");},
                    child: Image.asset('assets/facebook.jpg', height: 65, width: 20, color: Colors.blueGrey,)),
                SizedBox(width: 30,),
                InkWell( onTap: (){_launchURL("https://twitter.com/noon?s=08");},
                    child: Image.asset('assets/twitter.png', width: 18, height: 18, color: Colors.blueGrey,)),
                SizedBox(width: 30,),
                Image.asset('assets/insta.png', width: 18, height: 18, color: Colors.blueGrey,),
                SizedBox(width: 30,),
                Image.asset('assets/in.png', width: 27, height: 27, color: Colors.blueGrey,),
            ],),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Terms Of Use', style: TextStyle(fontSize: 10, color: Colors.blueGrey[800]),),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Container(width: 2, height: 2, decoration: BoxDecoration(borderRadius: BorderRadius.circular(1), color: Colors.blueGrey[800]),
                ),),
                Text('Terms Of Sale', style: TextStyle(fontSize: 10, color: Colors.blueGrey[800]),),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Container(width: 2, height: 2, decoration: BoxDecoration(borderRadius: BorderRadius.circular(1), color: Colors.blueGrey[800]),
                  ),),
                Text('Privacy Policy', style: TextStyle(fontSize: 10, color: Colors.blueGrey[800]),),
              ],),
            SizedBox(height: 15,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Warranty Policy', style: TextStyle(fontSize: 10, color: Colors.blueGrey[800]),),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Container(width: 2, height: 2, decoration: BoxDecoration(borderRadius: BorderRadius.circular(1), color: Colors.blueGrey[800]),
                  ),),
                Text('Return Policy', style: TextStyle(fontSize: 10, color: Colors.blueGrey[800]),),
            ],),
            SizedBox(height: 15,),
            Text('Version 2.17 (550)', style: TextStyle(fontSize: 10, color: Colors.blueGrey[400]), textAlign: TextAlign.center,),
            SizedBox(height: 15,),
            Text('@ 2019 noon.com. All rights reserved', style: TextStyle(fontSize: 10, color: Colors.blueGrey[800]), textAlign: TextAlign.center,),
            SizedBox(height: 15,)
          ],),
        ),
      ],)
    );
  }
}
