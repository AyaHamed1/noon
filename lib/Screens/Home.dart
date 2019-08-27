import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noon/Screens/Details.dart';
import 'package:noon/Screens/HomePage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _photo =[
    'assets/tv1.PNG',
    'assets/tv2.PNG',
    'assets/tv3.PNG',
    'assets/tv1.PNG',
    'assets/tv2.PNG',
    'assets/tv3.PNG',
  ];
  List _company =[
    'SAMSUNG',
    'LENOVO',
    'DELL',
    'SAMSUNG',
    'LENOVO',
    'DELL',
  ];
  List _price =[
    'EGP 8,910.00',
    'EGP 5,860.00',
    'EGP 9,250.00',
    'EGP 8,910.00',
    'EGP 5,860.00',
    'EGP 9,250.00',
  ];
  List _name =[
    '30-Inch Series 7 4K UHD Smart TV Black',
    '43-Inch Series 3 2K UHD Smart TV Black',
    '32-Inch Series 8 5K UHD Smart TV Black',
    '30-Inch Series 7 4K UHD Smart TV Black',
    '43-Inch Series 3 2K UHD Smart TV Black',
    '32-Inch Series 8 5K UHD Smart TV Black',
  ];
  List _review =[
    '(12 reviews)',
    '(30 reviews)',
    '(15 reviews)',
    '(19 reviews)',
    '(30 reviews)',
    '(17 reviews)',
  ];
  List _rate = [
    '3.1',
    '4.5',
    '2.2',
    '1.9',
    '3.4',

  ];

  Widget _top(String myText) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(children: <Widget>[
            Text(myText, style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black
            ),),
            Expanded(child: SizedBox(width: 110,)),
            InkWell( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(2))); },
              child: Container(
                height: 30, width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.blue),
                ),
                child: Center(child: Text('SHOP NOW', style: TextStyle(
                    color: Colors.blue, fontSize: 13, fontWeight: FontWeight.bold
                ),),),
              ),
            ),
          ],),
        )
      ],),
    );
  }

  Widget _buildItem(String myImg, String company , String itemN, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 350, width: 170,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
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
              child: Image.asset(myImg, height: 150, width: 150,),
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
              child: Text(company, style: TextStyle(
                color: Colors.grey, fontSize: 15,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(itemN, style: TextStyle(
                  color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold
              ),),
            ),
            Expanded(child: SizedBox(),),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(price, style: TextStyle(
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
        _top('Electronics'),
        SizedBox(width: MediaQuery.of(context).size.width, height: 400,
          child: ListView.builder(scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index){
              return InkWell(
                  onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Details(photo: _photo[index],price: _price[index],company: _company[index],name: _name[index],rate: _rate[index],review: _review[index],))); },
                  child: _buildItem(_photo[index], _company[index], _name[index], _price[index]));
            },),
        ),
        _top('Make Up'),
        SizedBox(width: MediaQuery.of(context).size.width, height: 400,
          child: ListView.builder(scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index){
              return _buildItem('assets/essence.jpeg', 'essence', 'Blusher', 'EGP 58.90');
            },),
        ),
        _top('Get Ready For School'),
        SizedBox(width: MediaQuery.of(context).size.width, height: 400,
          child: ListView.builder(scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index){
              return _buildItem('assets/bag.PNG', 'M&G', 'Zippered Backpack', 'EGP 333.00');
            },),
        ),
        _top('Noon Picks'),
        SizedBox(width: MediaQuery.of(context).size.width, height: 400,
          child: ListView.builder(scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index){
              return _buildItem('assets/banana.jpeg', 'essence', 'Banana Powder', 'EGP 86.50');
            },),
        ),
      ],),
    );
  }
}
