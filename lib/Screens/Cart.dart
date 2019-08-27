import 'package:flutter/material.dart';
import 'Addresses.dart';
import 'package:loader_search_bar/loader_search_bar.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  Widget _buildBta3(String myText, String describe, String price, String image, String date){
    return Container(
      height: 310,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: Colors.white),
      child: Column( crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 15),
          child: Text(myText, style: TextStyle(
            color: Colors.grey[500], fontSize: 15
          ),),
        ),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 10),
            child: Row( children: <Widget>[
              Container(
                width: 0.6*MediaQuery.of(context).size.width,
                child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(describe, style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black
                    ),),
                    SizedBox(height: 10,),
                    Text(price, style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black
                    ),)
                  ],),
              ),
              Expanded(child: SizedBox(width: 50,),),
              Image.asset(image, height: 120, width: 100,)
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Order in the next ', style: TextStyle(fontSize: 14),),
              Text('38 mins ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
              Text('and recieve it by', style: TextStyle(fontSize: 14),),
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(date, style: TextStyle(fontSize: 15, color: Colors.green[700], fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.settings_backup_restore, color: Colors.yellow[700], size: 20,),
              SizedBox(width: 10,),
              Text('This item cannot be exchanged or returned.')
            ],),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 15, left:15),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Sold by '),
              Text('noon', style: TextStyle(fontWeight: FontWeight.bold),),
              Expanded(child: SizedBox(),),
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
            ],),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 10, bottom: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Icon(Icons.favorite_border, size: 20, color: Colors.blueGrey,),
              SizedBox(width: 5,),
              Text('Move to wishlist', style: TextStyle(color: Colors.blueGrey, fontSize: 14),),
              SizedBox(width: 15,),
              Icon(Icons.delete_outline, size: 20, color: Colors.blueGrey,),
              SizedBox(width: 5,),
              Text('Remove', style: TextStyle(color: Colors.blueGrey, fontSize: 14),),
            ],),
          ),
          Container(height: 1, width: MediaQuery.of(context).size.width, decoration: BoxDecoration(
              color: Colors.grey[300]
          ),),
      ],),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  SearchBar(
          searchHint: 'Search',
          //iconified: false,
          defaultBar:AppBar(
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
          )
      ),
      body: ListView(children: <Widget>[
        _buildBta3("MAYBELLINE NEW YORK", "Volum' Express Clossal Mascara 100% Black", "EGP 75.00", "assets/mascara.jpg", "Sun, Aug 25"),
        _buildBta3("essence", "Matt Touch Blush 10 Peach Me Up!", "EGP 58.90", "assets/essence.jpeg", "Sun, Aug 25"),
        _buildBta3("essence", "Brighten Up! Banana Powder 10 Bababanana", "86.50", "assets/banana.jpeg", "Mon, Aug 26"),
        SizedBox(height: 10,),
        Container(height: 300, width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.blue[50]),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField( style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 15),
                  decoration:
                  InputDecoration( hintText: "Enter Cupon Code or Gift Card", hintStyle: TextStyle(
                    color: Colors.grey, fontSize: 15,),),),
              ),
              Padding(
                padding: const EdgeInsets.only( left: 25, right: 25),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Subtotal 3 items', style: TextStyle(fontSize: 13),),
                    Expanded(child: SizedBox(),),
                    Text('EGP 220.40', style: TextStyle(color: Colors.blueGrey, fontSize: 13),),
                ],),
              ),
              Padding(
                padding: const EdgeInsets.only( left: 25, right: 25),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Deliver to', style: TextStyle(fontSize: 13),),
                    SizedBox(width: 5),
                    Container(width: 82, height: 35,
                    decoration: BoxDecoration(color: Colors.white),
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 2,),
                          Text(' Dakahlia'),
                          SizedBox(width: 10),
                          Icon(Icons.keyboard_arrow_down, color: Colors.blueGrey, size: 15,)
                        ],
                      ),
                    ),
                    Expanded(child: SizedBox(),),
                    Text('EGP 15.00', style: TextStyle(color: Colors.blueGrey, fontSize: 13),),
                  ],),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(height: 1, width: MediaQuery.of(context).size.width, decoration: BoxDecoration(
                    color: Colors.grey[300]
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only( left: 25, right: 25),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Total ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),),
                    Text('(Iclusive of VAT)', style: TextStyle(color: Colors.blueGrey, fontSize: 11),),
                    Expanded(child: SizedBox(),),
                    Text('EGP 235.40', style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),),
                  ],),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, left: 50, top: 15),
                child: Row(children: <Widget>[
                  Image.asset('assets/master.png', height: 65, width: 55,),
                  Expanded(child: SizedBox()),
                  Image.asset('assets/visa.png', height: 65, width: 55,),
                  Expanded(child: SizedBox()),
                  Image.asset("assets/cash.ico", height: 55, width: 45,)
                ],),
              ),
          ],),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Cart Total ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
            Text('(3 Items)', style: TextStyle(color: Colors.blueGrey, fontSize: 11),),
            Expanded(child: SizedBox(),),
            Text('EGP 235.40', style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),),
          ],),
        ),
        InkWell( onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Addresses())); },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(color: Colors.blue[800],),
            child: Center(
                child: Text('CHECKOUT NOW', textAlign: TextAlign.center, style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white
                ),)),
          ),
        ),
      ],),
    );
  }
}
