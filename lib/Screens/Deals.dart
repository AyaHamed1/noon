import 'package:flutter/material.dart';
import 'package:noon/Screens/Filter.dart';
import 'package:noon/Screens/Sort.dart';

class Deals extends StatefulWidget {
  @override
  _DealsState createState() => _DealsState();
}

class _DealsState extends State<Deals> {
  Widget _buildItem(String myImg, String itemN) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Container(
        height: 300, width: 198,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]), color: Colors.white
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(children: <Widget>[
                Container(
                  height: 20, width: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15), color: Theme.of(context).splashColor
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3,),
                    child: Row(children: <Widget>[
                      Image.asset('assets/logo3.png', height: 13, width: 13,),
                      SizedBox(width: 5,),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2),
                        child: Text('now', style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13
                        ),),
                      ),
                    ],),
                  ),
                ),
                Expanded(child: SizedBox(width: 100,)),
                Icon(Icons.favorite_border, color: Colors.black38,),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(myImg, height: 70, width: 150,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Container(
                width: 150, height: 25,
                decoration: BoxDecoration(color: Colors.green[800]),
                child: Center(child: Text('Extra 10% Off-RAG3EEN', style: TextStyle(
                    fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white
                ),),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Text('M&G', style: TextStyle(
                color: Colors.grey, fontSize: 15,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(itemN, style: TextStyle(
                  color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('EGP 333.00', style: TextStyle(
                  color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30, width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: Colors.blue),
                ),
                child: Center(child: Text('ADD TO CART', style: TextStyle(
                    color: Colors.blue, fontSize: 13, fontWeight: FontWeight.bold
                ),),),
              ),
            )
          ],),
      ),
    );
  }
  Widget _double(String myImg, String itemN){
    return Row( mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      _buildItem(myImg, itemN),
      _buildItem(myImg, itemN),
    ],);
  }

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
      body: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 45, right: 45),
          child: Container(height: 40, width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.transparent),
            child: Row(children: <Widget>[
              Container(
                height: 20, width: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: Theme.of(context).splashColor
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 3,),
                  child: Row(children: <Widget>[
                    Image.asset('assets/logo3.png', height: 13, width: 13,),
                    SizedBox(width: 5,),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Text('now', style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13
                      ),),
                    ),
                  ],),
                ),
              ),
              SizedBox(width: 5,),
              Icon(Icons.crop_square, size: 15, color: Colors.grey,),
              SizedBox(width: 35,),
              InkWell( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Filter())); },
                  child: Text("FILTER", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)),
              SizedBox(width: 5,),
              Icon(Icons.local_bar, size: 15, color: Colors.black,),
              SizedBox(width: 35,),
              InkWell( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Sort())); },
                  child: Text("SORT", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)),
              SizedBox(width: 5,),
              Icon(Icons.sort, size: 15, color: Colors.black,),
              SizedBox(width: 35,),
              Icon(Icons.list, size: 20, color: Colors.black,),
            ],),
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height-180,
          child: ListView.builder(scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, index){
              return _double('assets/mascara.jpg', 'Essence Blusher');
            },),
      ),
      ],)
    );
  }
}
