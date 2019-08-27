import 'package:flutter/material.dart';
import 'package:noon/Screens/Deals.dart';
import 'package:noon/Screens/Home.dart';
import 'package:vertical_tabs/vertical_tabs.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  Widget _card(_itemCount) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 10),
          child: Text(
            'title is here',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        _buildCard(_itemCount)
      ],
    );
  }

  Widget _moreCard(_itemCount) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 10),
          child: Row(
            children: <Widget>[
              Text(
                'title is here',
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
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));},
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
                  'assets/bag.PNG',
                  fit: BoxFit.fill,
                  width: 80,
                  height: 70,
                ),
              ),
              Text(
                'Back packs',
                style: TextStyle(fontSize: 11),
              ),
            ],
          ),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>Deals()));},
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).splashColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/logo3.png',
              height: 35,
              width: 35,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "n o o n",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton( onPressed: (){},
              icon: Icon(
                Icons.search,
                size: 30,
                color: Colors.black45,
              ),
            ),
          )
        ],
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
            _card(4),
            _card(7),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _card(5),
            _moreCard(8),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _moreCard(5),
            _card(3),
            _moreCard(6),
            _moreCard(3),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _moreCard(5),
            _card(6),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _card(4),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _card(4),
            _moreCard(5),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _moreCard(5),
            _card(7),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _card(4),
            _card(3),
            _moreCard(3),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _card(3),
            _moreCard(5),
            _card(3),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _moreCard(5),
            _card(7),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _card(4),
            _moreCard(5),
            _moreCard(3),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _moreCard(3),
            _card(2),
            _moreCard(3),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _moreCard(3),
            _card(2),
            _moreCard(3),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _moreCard(3),
            _card(2),
            _moreCard(3),
          ], padding: EdgeInsets.all(10)),
          ListView(children: <Widget>[
            _moreCard(3),
            _card(2),
            _moreCard(3),
          ], padding: EdgeInsets.all(10)),
        ],
      ),
    );
  }
}
