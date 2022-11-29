import 'package:flutter/material.dart';
import 'package:tp_flutter/add_animal_card.dart';
import 'package:tp_flutter/add_card_form.dart';
import 'package:tp_flutter/card_contact.dart';
import 'package:tp_flutter/card_contact_dynamique.dart';

import 'add_card_bdd.dart';
import 'add_contact_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(color: Colors.white),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          // <-- SCAFFOLD WITH TRANSPARENT BG
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            // <-- APPBAR WITH TRANSPARENT BG
            elevation: 0,

            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                onPressed: () {},
              )
            ],
          ),
          body: Center(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => card_contact()));
                  },
                  child: Container(
                    width: 500,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.grey,
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          ListTile(
                            leading: Icon(Icons.view_list, size: 70),
                            title: Text('Exo 1',
                                style: TextStyle(color: Colors.white)),
                            subtitle: Text('Liste de card en dur',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Text('accéder à card_contact',
                              style: TextStyle(color: Colors.white)),
                          Text('', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) =>
                                card_contact_dynamique()));
                  },
                  child: Container(
                    width: 500,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.grey,
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          ListTile(
                            leading: Icon(Icons.view_list, size: 70),
                            title: Text('Exo 2',
                                style: TextStyle(color: Colors.white)),
                            subtitle: Text('générer des cards différentes',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Text('accéder à card_contact_dynamique',
                              style: TextStyle(color: Colors.white)),
                          Text('', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) =>
                                add_animal_card()));
                  },
                  child: Container(
                    width: 500,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.grey,
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          ListTile(
                            leading: Icon(Icons.view_list, size: 70),
                            title: Text('Exo 3',
                                style: TextStyle(color: Colors.white)),
                            subtitle: Text('Ajouter des cards en via de Radio button',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Text('accéder à add_animal_card',
                              style: TextStyle(color: Colors.white)),
                          Text('', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) =>
                                add_contact_card()));
                  },
                  child: Container(
                    width: 500,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.grey,
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          ListTile(
                            leading: Icon(Icons.view_list, size: 70),

                            title: Text('Exo 4',
                                style: TextStyle(color: Colors.white)),
                            subtitle: Text('Ajouter des cards via un formulaire',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Text('accéder à add_contact_card',
                              style: TextStyle(color: Colors.white)),
                          Text('', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) =>
                                add_card_form()));
                  },
                  child: Container(
                    width: 500,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.grey,
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          ListTile(
                            leading: Icon(Icons.view_list, size: 70),

                            title: Text('Exo 5',
                                style: TextStyle(color: Colors.white)),
                            subtitle: Text('Ajouter des cards via un formulaire dans uen autre page',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Text('accéder à add_card_form',
                              style: TextStyle(color: Colors.white)),
                          Text('', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),

                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) =>
                                add_card_form()));
                  },
                  child: Container(
                    width: 500,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.grey,
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          ListTile(
                            leading: Icon(Icons.view_list, size: 70),

                            title: Text('Exo 6',
                                style: TextStyle(color: Colors.white)),
                            subtitle: Text('Ajouter des cards via un formulaire dans une bdd',
                                style: TextStyle(color: Colors.white)),
                          ),
                          Text('accéder à add_card_bdd',
                              style: TextStyle(color: Colors.white)),
                          Text('', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
