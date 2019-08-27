import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:noon/Screens/Cart.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).splashColor,
        title: Row( mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo3.png', height: 35, width: 35,),
            SizedBox(width: 10,),
            Text("n o o n", style: TextStyle(
                color: Colors.black54, fontSize: 23, fontWeight: FontWeight.bold
            ),),
          ],),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search, size: 30, color: Colors.black45,),
          )
        ],
      ),
      body: ListView(children: <Widget>[
        Container(
          height: 400,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Carousel(
                dotBgColor: Colors.transparent,
                dotColor: Colors.grey[400],
                dotIncreasedColor: Colors.yellow,
                indicatorBgPadding: 15,
                boxFit: BoxFit.none,
                images: [
                  Image.asset('assets/tv1.PNG',),
                  Image.asset('assets/tv2.PNG',),
                  Image.asset('assets/tv3.PNG',),
                  Image.asset('assets/tv4.PNG',),
                ],
                showIndicator: true,
                autoplay: false,
                dotVerticalPadding: 0,
              ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Samsung', style: TextStyle(
                color: Colors.blue[800], fontWeight: FontWeight.bold, fontSize: 15
              ),),
                Text("43-Inch Series 7 4K UHD Smart TV 43NU7100 Black", style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),),
                Row(
                  children: <Widget>[
                    Container(width: 35, height: 18,
                      decoration: BoxDecoration(color: Colors.orangeAccent, borderRadius: BorderRadius.circular(5)),
                      child: Center(child: Text(
                        '4.3', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                      ),),
                    ),
                    SizedBox(width: 5,),
                    Text('(12 reviews)', style: TextStyle(color: Colors.grey, fontSize: 12,),),
                  ],),
                SizedBox(height: 5,),
                Text('EGP 8,190.00', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                SizedBox(height: 17,),
                Text('(inclusive of VAT)', style: TextStyle(color: Colors.grey, fontSize: 12,),),
            ],),
          ),
        ),
        Container(height: 70, width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.grey[100]),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(child: Row(children: <Widget>[
              Container(width: 0.8*MediaQuery.of(context).size.width, height: 50,
                child: Column(
                  children: <Widget>[
                    Row( mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
                      Text('Order in the next ', style: TextStyle(fontSize: 13),),
                      Text('14 hrs 41 mins ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      Text('to ', style: TextStyle(fontSize: 13),),
                      Text('Dakahlia', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                    ],),
                    Row(children: <Widget>[
                      Text('and recieve it by ', style: TextStyle(fontSize: 13),),
                      Text('Mon, Sep 2', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green),),
                    ],)
                  ],
                ),
                ),
              Expanded(child: SizedBox(),),
              Icon(Icons.arrow_forward_ios, size: 15,)
            ],),),),
        ),
      ],),
      bottomNavigationBar: InkWell( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Cart())); },
        child: Container(width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(color: Colors.blue[800],),
          child: Center(
              child: Text('ADD TO CART', textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white
              ),)),),
      ),
    );
  }
}
