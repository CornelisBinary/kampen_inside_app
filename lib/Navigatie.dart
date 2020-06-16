import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'GoogleMaps.dart';
class Navigatie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[500],
        title: Text('Navigatie'),
      ),
      body: MapController(kleur: Colors.teal[400], navigatie: true, mapType: MapType.normal),
    );
  }
}
