import 'package:flutter/material.dart';
import 'package:noon/Screens/Cart.dart';
import 'package:noon/Screens/Categories.dart';
import 'package:noon/Screens/Deals.dart';
import 'package:noon/Screens/MyAcc.dart';
import 'Home.dart';

class HomePage extends StatefulWidget {
  final int newIndex;
  HomePage(this.newIndex);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex;
  @override
  void initState() {
    _selectIndex= widget.newIndex;
    super.initState();
  }
  var pages= [
    Home(),
    Categories(),
    Deals(),
    Acc(),
    Cart(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Theme.of(context).splashColor,
          currentIndex: _selectIndex,
          onTap: (index){
            print(index);
            setState(() {
              _selectIndex= index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home', style: TextStyle(color: Colors.black54)),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.collections_bookmark),
                title: Text('Categories', style: TextStyle(color: Colors.black54))
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.loyalty),
                title: Text('Deals', style: TextStyle(color: Colors.black54))
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                title: Text('My Account', style: TextStyle(color: Colors.black54))
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                title: Text('Cart', style: TextStyle(color: Colors.black54),)
            )
          ],
        ),
        body: pages[_selectIndex]
    );
  }
}
