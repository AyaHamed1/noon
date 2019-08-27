import 'package:flutter/material.dart';
import 'package:noon/Screens/HomePage.dart';
import 'package:vertical_tabs/vertical_tabs.dart';
import 'package:loader_search_bar/loader_search_bar.dart';


class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  List _text=[
    'Top in noon',
    'Shop by Brand',
    'Gaming',
    'Top categories',
  ];

  List _image= [
    'assets/bag.PNG',
    'assets/tv1.PNG',
    'assets/essence.jpeg',
    'assets/banana.jpeg',
    'assets/bag.PNG',
    'assets/tv1.PNG',
    'assets/essence.jpeg',
    'assets/banana.jpeg',
    'assets/bag.PNG',
    'assets/tv1.PNG',
    'assets/essence.jpeg',
    'assets/banana.jpeg',
  ];

  List _name= [
    'Zippered Backpack',
    'SAMSUNG',
    'Blusher',
    'Banana Powder',
    'Zippered Backpack',
    'SAMSUNG',
    'Blusher',
    'Banana Powder',
    'Zippered Backpack',
    'SAMSUNG',
    'Blusher',
    'Banana Powder',
  ];


  Widget _card(_itemCount,_titleCount) {
    //  int _count = 0;
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 10),
          child: Text(
            _text[_titleCount],
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        _buildCard(_itemCount)
      ],
    );
  }

  Widget _moreCard(_itemCount,_titleCount) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 10),
          child: Row(
            children: <Widget>[
              Text(
                _text[_titleCount],
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Expanded(
                  child: SizedBox(
                    width: 50,
                  )),
              InkWell(
                child: Text(
                  'View all',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                onTap: (){Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => HomePage(2)));},
              ),
            ],
          ),
        ),
        _buildCard(_itemCount)
      ],
    );
  }

  Widget _buildCard(_itemCount) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: _itemCount,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: MediaQuery.of(context).size.width /
              (.7 * MediaQuery.of(context).size.height)),
      itemBuilder: (context, index) {
        return InkWell(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(6),
                child: Image.asset(
                  _image[index],
                  fit: BoxFit.fill,
                  width: 80,
                  height: 70,
                ),
              ),
              Text(
                _name[index],
                style: TextStyle(fontSize: 11),
              ),
            ],
          ),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>HomePage(2)));},
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchBar(
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
      body: VerticalTabs(
        tabsWidth: .25 * MediaQuery.of(context).size.width,
        indicatorColor: Colors.amber,
        selectedTabBackgroundColor: Colors.yellow[100],
        // tabsShadowColor: Colors.blue,
        // dividerColor: Colors.green,
        unselectedTabBackgroundColor: Colors.grey[200],
        contentScrollAxis: Axis.vertical,

        tabs: <Tab>[
          Tab(child: Text('Just for you')),
          Tab(child: Text('Mobiles & Accessories')),
          Tab(child: Text('Elctronics')),
          Tab(child: Text('Appliances')),
          Tab(child: Text('Woman\'s Fashion')),
          Tab(child: Text('Man\'s Fashion')),
          Tab(child: Text('Watches')),
          Tab(child: Text('EyeWear')),
          Tab(child: Text('Bags & Luggage')),
          Tab(child: Text('Beuaty & Personal Care')),
          Tab(child: Text('Home & Kitchen')),
          Tab(child: Text('Sports & Fitness')),
          Tab(child: Text('Sports & Fitness')),
          Tab(child: Text('Sports & Fitness')),
          Tab(child: Text('Sports & Fitness')),
        ],
        contents: <Widget>[
          ListView(children: <Widget>[
            _card(4,0),
            _card(7,1),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _card(5,0),
            _moreCard(8,1),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _moreCard(5,0),
            _card(3,1),
            _moreCard(6,0),
            _moreCard(3,1),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _moreCard(5,0),
            _card(6,1),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _card(4,0),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _card(4,0),
            _moreCard(5,1),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _moreCard(5,0),
            _card(7,1),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _card(4,0),
            _card(3,1),
            _moreCard(3,2),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _card(3,0),
            _moreCard(5,1),
            _card(3,2),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _moreCard(5,0),
            _card(7,1),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _card(4,0),
            _moreCard(5,1),
            _moreCard(3,2),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _moreCard(3,0),
            _card(2,1),
            _moreCard(3,2),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _moreCard(3,0),
            _card(2,1),
            _moreCard(3,2),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _moreCard(3,0),
            _card(2,1),
            _moreCard(3,2),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _moreCard(3,0),
            _card(2,1),
            _moreCard(3,2),
          ], padding: EdgeInsets.all(10)),
        ],
      ),
    );
  }
}
