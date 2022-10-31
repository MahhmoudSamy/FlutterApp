// ignore_for_file: non_constant_identifier_names

import 'dart:async';
import 'package:flutter/material.dart';


import 'package:google_maps_flutter/google_maps_flutter.dart';




class DisplyCarPickupDetials extends StatefulWidget {
  const DisplyCarPickupDetials({super.key});

  @override
  State<DisplyCarPickupDetials> createState() => DisplyCarPickupDetialsState();
}

class DisplyCarPickupDetialsState extends State<DisplyCarPickupDetials> {
  List tripdetials1=["car1.jfif","200 EGP","10 pm","123 awx ","Qasem",'01116899075',"CUV"];
   List  tripdetials2=["car2.jfif","250 EGP","9:45 pm","567 vgh ","Abed",'01114877098',"Coupe",];
    List  tripdetials3=["car3.jfif","300 EGP","9:20 pm","097 fgv ","Yamen",'01116859087',"Sedan",];

 


 

  Completer<GoogleMapController> _controller = Completer();

  final Set<Marker> _markers = Set<Marker>();
  final Set<Polygon> _polygons = Set<Polygon>();
  final Set<Polyline> _polylines = Set<Polyline>();
  List<LatLng> polygonLatLngs = <LatLng>[];

  int _polygonIdCounter = 1;
  final int _polylineIdCounter = 1;

  // ignore: unnecessary_const
  static const CameraPosition _kGooglePlex = const CameraPosition(
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
          markerId: MarkerId('marker'),
          position: point,
        ),
      );
    });
  }

  


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            title: Text('Available Poolers'),
            backgroundColor: Color.fromARGB(255, 0, 230, 118),
          ),
          body: Container(
            child: GoogleMap(
              mapType: MapType.normal,
              markers: _markers,
              polygons: _polygons,
              polylines: _polylines,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
             
            ),
          ),
        ),
        carinfo(68.5,tripdetials2[0],tripdetials1[6],tripdetials1[3],tripdetials1[2],tripdetials1[1]),
        carinfo(66.5+52,tripdetials1[0],tripdetials2[6],tripdetials2[3],tripdetials2[2],tripdetials2[1]),
        carinfo(66.5+52+52,tripdetials3[0],tripdetials3[6],tripdetials3[3],tripdetials3[2],tripdetials3[1]),
                 
                 
                 ],
                 );
     
}


Padding carinfo( double counter,car_image,car_type,car_tag,trip_time,price){  
 
 // final double x=100 + counter;  //56.5


 return Padding(
                 
                  padding: EdgeInsets.only(top:counter),
                  child: Container(
                  
                    color: Colors.white,
                    height: 100,
                    width: 500,
                    //double width,
                    child: Column(
                      children: [
                        Row(
                         
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                          children: [
                         
                            Column(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: new BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/${car_image}',
                                    height: 50,
                                  ),
                                ),
                               
                              ],
                            ),
                         
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '${car_type}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                Text(
                                  '${car_tag}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                // ),
                              ],
                            ),
                            Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                 Text(
                                  '${price}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                               
                                // ignore: prefer_const_constructors
                              Text(
                                  '${trip_time}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                       
                      
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/DisplayDriverDetials');
                          },
                          style: ElevatedButton.styleFrom(
                            primary:Color.fromARGB(255, 0, 230, 118),
                            minimumSize: const Size(500, 40), //w,h
                           
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Mouse Memoirs',
                            ),
                          ),
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                              color: Colors.white,

                           
                            ),
                          ),
                        ),
                       
                       
                       
                      ],

                    ),
                   
                  ),
                 );

}









// class TripDetials{
//    late String car_image;
//   late String car_type;
//    late String price;
//    late String time;
//    late String cartag;
//    late String driver_name;
//    late int phone_number;
//    late String rate;

//    TripDetials({required this.car_image,
//     required this.car_type,
//     required this.price,
//     required this.time,
//     required this.cartag,
//     required this.driver_name,
//     required this.phone_number,
//     required this.rate,

//     });

//     List<TripDetials> encuer(){
// List< TripDetials> tripdetials = [
//     TripDetials(car_image: "cdedce", car_type: "dede",price:"200 EGP",time:"10 pm",cartag:"123 awx ",driver_name:"Qasem",phone_number:01116899075, rate:"5" ),
//     TripDetials(car_image: "cdedce", car_type: "2w2",price:"210 EGP",time:"10:50 pm",cartag:"793 awx ",driver_name:"Osman",phone_number:01116816275, rate:"3" ),
//         TripDetials(car_image: "cdedce", car_type: "sws2",price:"400 EGP",time:"11:10 pm",cartag:"456 iku ",driver_name:"Sultan",phone_number:01115686275, rate:"2" ),
  
 
//];
 //return tripdetials;
  //  }









}
