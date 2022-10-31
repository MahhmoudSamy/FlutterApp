import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
//DisplayDriverDetials

class DisplayDriverDetials extends StatefulWidget {
  const DisplayDriverDetials({Key? key}) : super(key: key);

  //static const routeName = "/FromTo";

  @override
  State<DisplayDriverDetials> createState() => DisplayDriverDetialsState();
}

class DisplayDriverDetialsState extends State<DisplayDriverDetials> {
 
  Completer<GoogleMapController> _controller = Completer();
  TextEditingController _originController = TextEditingController();
  TextEditingController _destinationController = TextEditingController();

  Set<Marker> _markers = Set<Marker>();
  Set<Polygon> _polygons = Set<Polygon>();
  Set<Polyline> _polylines = Set<Polyline>();
  List<LatLng> polygonLatLngs = <LatLng>[];

  int _polygonIdCounter = 1;
  int _polylineIdCounter = 1;

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(30.033333, 31.233334),
    zoom: 14.4746,
  );

  @override
  void initState() {
    super.initState();

    _setMarker(LatLng(30.033333, 31.233334));
  }

  void _setMarker(LatLng point) {
    setState(() {
      _markers.add(
        Marker(
          markerId: const MarkerId('marker'),
          position: point,
        ),
      );
    });
  }

  void _setPolygon() {
    final String polygonIdVal = 'polygon_$_polygonIdCounter';
    _polygonIdCounter++;

    _polygons.add(
      Polygon(
        polygonId: PolygonId(polygonIdVal),
        points: polygonLatLngs,
        strokeWidth: 2,
        fillColor: Colors.transparent,
      ),
    );
  }

  

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
        
          body: Column(
            children: [
              Expanded(
                child: GoogleMap(
                  mapType: MapType.normal,
                  markers: _markers,
                  polygons: _polygons,
                  polylines: _polylines,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                  onTap: (point) {
                    setState(() {
                      polygonLatLngs.add(point);
                      _setPolygon();
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Padding(
                  //padding: const EdgeInsets.all(100.0),
                  //padding: const EdgeInsets.only(top: 30.0),
                  padding: const EdgeInsets.only(top: 500),
                  child: Container(
                    // constraints: BoxConstraints.expand(bottom: 50),
                    color: Colors.white,
                    // height: 120,
                    //  width: 500,
                    //double width,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        /////// 1
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: new BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/person2.jpg',
                                    height: 60,
                                  ),
                                ),
                                // ignore: prefer_const_constructors
                                Text(
                                  'Osman',
                                  // ignore: prefer_const_constructors
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                              ],
                            ),
                            
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisSize: MainAxisSize.max,
                              children: [ Row(children: [
                                Text(
                                  ' Car Number: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                Text(
                                  ' 12395 ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.blueGrey,
                                  ),
                                ),],),
                                 Row(children: [
                                Text(
                                  ' Car Color: ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                Text(
                                  ' Red ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                 ],
                                 ),
                                 ],
                                // ),
                            ),
                          ],
                        ),
                        ////2
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ClipRRect(
                              
                              borderRadius: new BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/phone_icon.jfif',
                                height: 40,
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 102.5),
                              child: ElevatedButton(
                                onPressed: () {
                               //   Navigator.pushNamed(context, '/chatPage.dart');
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: const Color.fromARGB(255, 0, 230, 118),
                                    minimumSize: const Size(165, 40), //w,h
                                    textStyle: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Mouse Memoirs',
                                    )),
                                child: Text(
                                  'Send Message',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                               
                                Navigator.pushNamed(context, '/EnterInfoOnMap');
                              },
                              style: ElevatedButton.styleFrom(
                                primary:Color.fromARGB(255, 0, 230, 118),
                                minimumSize: const Size(165, 40), //w,h

                                textStyle: TextStyle(
                                  
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Mouse Memoirs',
                                ),
                              ),
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                               // Navigator.pushNamed(context, '/RatingDriver');
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 0, 230, 118),
                                minimumSize: const Size(165, 40), //w,h

                                textStyle: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Mouse Memoirs',
                                ),
                              ),
                              child: Text(
                                'Join Ride',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //////////////////////////////////////write here colum
                  ),
                ),
           
      ],
    );
  }

  
}