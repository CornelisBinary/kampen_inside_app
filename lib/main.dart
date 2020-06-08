import 'package:flutter/material.dart';
import 'Overzicht.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kampen Inside',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.grey[600],
      ),
      home: Overzicht(),
    );
  }
}
