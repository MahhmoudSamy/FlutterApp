import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

//EnterInfoOnMap
class EnterInfoOnMap extends StatefulWidget {
  const EnterInfoOnMap({super.key});

  
  @override
  State<EnterInfoOnMap> createState() => EnterInfoOnMapState();
}

class EnterInfoOnMapState extends State<EnterInfoOnMap> {
  final Completer<GoogleMapController> _controller = Completer();
  final TextEditingController _originController = TextEditingController();
  final TextEditingController _destinationController = TextEditingController();

  Set<Marker> _markers = Set<Marker>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(30.033333, 31.233334),
    zoom: 14.4746,
  );

  @override
  void initState() {
    super.initState();

    _setMarker(const LatLng(30.033333, 31.233334));
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
    return Scaffold(appBar: AppBar(
            title: Text('Set Location'),
            backgroundColor: Color.fromARGB(255, 68, 182, 87),
          ),

      body: Column( 
        children: [
           SizedBox(
                        child: CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 248, 248, 248))),
                        height: 50.0,

                      ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    TextFormField(
                      controller: _originController,
                      decoration:
                          const InputDecoration(hintText: ' Enter Orgin'),
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                    TextFormField(
                      controller: _destinationController,
                      decoration: const InputDecoration(hintText: 'Enter Destination'),
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                    ButtonBar(
                      children: [
                        ElevatedButton( style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                          onPressed: () async {
                                                   Navigator.pushNamed(context, '/DisplyCarPickupDetials');
                          },
                          child: Text("Confirm"),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            
            ],
          ),
          Expanded(
            child: GoogleMap(
              mapType: MapType.normal,
              markers: _markers,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
             
            ),
          ),
        ],
      ),
    );
  }


}