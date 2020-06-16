import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'GoogleMaps.dart';
class Bezienswaardigheden extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: Text('Bezienswaardigheden'),
      ),
      body: MapController(kleur: Colors.green[400], navigatie: false, mapType: MapType.hybrid),
    );
  }
}


