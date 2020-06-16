import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController extends StatefulWidget {

  MapController({this.navigatie, this.kleur, this.mapType});

  final Color kleur;
  final bool navigatie;
  final MapType mapType;

  @override
  _MapControllerState createState() => _MapControllerState();
}

class _MapControllerState extends State<MapController> {
  // three Lists working together to display the locations.
  final List<String> entries = <String>['Stedelijk Museum Kampen', 'Ikonenmuseum Kampen', 'De stadsherberg Kampen','Ijssalon Dondo', 'Hoornbeeck Kampen',
    'Buitenkerk', 'Stadsgehoorzaal Kampen - Theater en Congreslocatie', 'Home of Entertainment (HOE)',
    'Zwembad De Steur'];
  final List<CameraPosition> cameraPositions =
  <CameraPosition>[
    CameraPosition(
        bearing: 265,
        target: LatLng(52.558876,5.916677),
        tilt: 50,
        zoom: 19
    ),
    CameraPosition(
        bearing: 265,
        target: LatLng(52.558693, 5.915254),
        tilt: 50,
        zoom: 19
    ),
    CameraPosition(
        bearing: 192,
        target: LatLng(52.558769, 5.917436),
        tilt: 50,
        zoom: 19
    ),
    CameraPosition(
        bearing: 192,
        target: LatLng(52.558253, 5.917123),
        tilt: 50,
        zoom: 19
    ),
    CameraPosition(
        bearing: 210,
        target: LatLng(52.536956, 5.920559),
        tilt: 70,
        zoom: 18
    ),
    CameraPosition(
        bearing: 300,
        target: LatLng(52.561770, 5.912788),
        tilt: 50,
        zoom: 18.5
    ),
    CameraPosition(
        bearing: 90,
        target: LatLng(52.558506, 5.914316),
        tilt: 50,
        zoom: 19
    ),
    CameraPosition(
        bearing: 90,
        target: LatLng(52.558338, 5.917119),
        tilt: 50,
        zoom: 19
    ),
    CameraPosition(
        bearing: 90,
        target: LatLng(52.553264, 5.911426),
        tilt: 50,
        zoom: 18
    ),
  ];

  // start position of the camera.
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(52.5587458, 5.9163871),
    zoom: 13,
  );

  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: GoogleMap(
            mapType: this.widget.mapType,
            buildingsEnabled: true,
            trafficEnabled: this.widget.navigatie,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: entries.length,
            itemBuilder: (_, int index) =>
                GestureDetector(
                  onTap: () {
                    _goToLocation(cameraPositions[index]);
                  },
                  child: Container(
                    margin: EdgeInsets.all(1),
                    height: 50,
                    color: this.widget.kleur,
                    child: Center(child: Text(entries[index])),
                  ),
                ),
          ),
        ),
      ],
    );
  }

  Future<void> _goToLocation(CameraPosition cameraPosition) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }
}


