import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:ui';

class LocationOnMap extends StatefulWidget {
  @override
  _LocationOnMapState createState() => _LocationOnMapState();
}

class _LocationOnMapState extends State<LocationOnMap> {
  GoogleMapController myController;
  String searchAddress;
  double currentLat;
  double currentLong;
  String address = 'Search for location';
  List<Placemark> placemark;
  Marker marker = Marker(markerId: MarkerId("1"));

  void initState() {
    super.initState();
  }

  getAddress(double lat, double long) async {
    placemark = await Geolocator()
        .placemarkFromCoordinates(lat, long, localeIdentifier: 'en');
    setState(() {
      address = placemark[0].country +
          "," +
          placemark[0].administrativeArea +
          "," +
          placemark[0].subLocality +
          "," +
          placemark[0].thoroughfare +
          "," +
          placemark[0].name;
    });
    print("ADDRESS " + address);
    print(currentLat);
    print(currentLong);
  }


  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      myController = controller;
    });
  }

  void _updatePosition(CameraPosition _position) {
    Position newMarkerPosition = Position(
        latitude: _position.target.latitude,
        longitude: _position.target.longitude);
    setState(() {
      marker = marker.copyWith(
          positionParam:
          LatLng(newMarkerPosition.latitude, newMarkerPosition.longitude));
    });
  }

  Widget _buildButton() {
    return Padding(
      padding: EdgeInsets.only(
          right: 20, left: 20, top: MediaQuery.of(context).size.height - 60),
      child: InkWell(
        child: Container(
          width: double.infinity,
          height: 40.0,
          child: Material(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            color: Theme.of(context).primaryColor,
            elevation: 5.0,
            child: Center(
                child: Text(
                  'Go to my location',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
          ),
        ),
        onTap: () {
        },
      ),
    );
  }

  Widget _buildSearch() {
    return Positioned(
        top: 30,
        right: 15,
        left: 15,
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: Colors.white),
          child: TextField(
            decoration: InputDecoration(
                hintText: address,
                hintStyle: TextStyle(
                    color: Theme.of(context).primaryColor, fontSize: 12),
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 10, top: 10, right: 10),
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: searchAndNavigate,
                  iconSize: 30,
                  color: Theme.of(context).primaryColor,
                )),
            onChanged: (value) {
              setState(() {
                searchAddress = value;
              });
            },
          ),
        ));
  }

  searchAndNavigate() {
    Geolocator().placemarkFromAddress(searchAddress).then((result) {
      myController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
          target:
          LatLng(result[0].position.latitude, result[0].position.longitude),
          zoom: 15.0)));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: GoogleMap(
                  myLocationEnabled: true,
                  onTap: (newLatLong) {
                    currentLat = newLatLong.latitude;
                    currentLong = newLatLong.longitude;
                    getAddress(currentLat, currentLong);
                  },
                  initialCameraPosition: CameraPosition(
                      target: LatLng(26.8206, 30.8025), zoom: 5.5),
                  onMapCreated: _onMapCreated,
                  // markers: markers,
                  onCameraMove: ((_position) => _updatePosition(_position)),
                ),
              ),
              _buildSearch(),

              _buildButton()
            ],
          ),
        ));
}

  Widget containerButton(String text) {
    return Padding(
      padding: EdgeInsets.only(left: 100, right: 100, top: 20),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}