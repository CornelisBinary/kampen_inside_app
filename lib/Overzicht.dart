import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kampeninsideapp/Bezienswaardigheden.dart';
import 'package:kampeninsideapp/Navigatie.dart';

class Overzicht extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kampen Inside'),
      ),
      body: Center(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Card(
                  color: Colors.grey[100],
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Informatie',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        width: 150,
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Kampen is een stad in de Nederlandse provincie Overijssel en de hoofdplaats van de gelijknamige gemeente. De oude Hanzestad is gelegen aan de benedenloop van de IJssel, nabij de uitmonding in het IJsselmeer en het Keteldiep.'
                        'Kampen ligt in Noordwest-Overijssel en is in dit gebied de grootste plaats. In 2019 telde de stad 36.400 inwoners. De oppervlakte van de stad bedraagt zo\'n 11.39 km².',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: Colors.green[100],
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Bezienswaardigheden',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        width: 150,
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      FloatingActionButton(
                        heroTag: "btn1",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Bezienswaardigheden()),
                          );
                        },
                       child: Icon(Icons.map),
                        backgroundColor: Colors.green,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  color: Colors.teal[100],
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Navigatie',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                        width: 150,
                        child: Divider(
                          color: Colors.grey,
                        ),
                      ),
                      FloatingActionButton(
                        heroTag: "btn2",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Navigatie()),
                          );
                        },
                        child: Icon(Icons.navigation),
                        backgroundColor: Colors.teal,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
