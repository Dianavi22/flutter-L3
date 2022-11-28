import 'package:flutter/material.dart';
import 'package:tp_flutter/add_contact_card.dart';
import 'package:tp_flutter/card_contact.dart';
import 'package:tp_flutter/card_contact_dynamique.dart';

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
          decoration: const BoxDecoration(
           color: Colors.white
          ),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [



                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => card_contact()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent.withOpacity(0.1),
                  ),
                  child: const Text(
                    "\nExo 1",textAlign: TextAlign.center,
                    style: TextStyle(
                     // fontFamily: 'PressStart',
                      fontSize: 22,
                      color: Colors.black
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {Navigator.push(
                      context,
                      PageRouteBuilder(
                          pageBuilder: (_, __, ___) => card_contact_dynamique()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent.withOpacity(0.1),
                  ),
                  child: const Text(
                    "\nExo 2",textAlign: TextAlign.center,
                    style: TextStyle(
                     // fontFamily: 'PressStart',
                      fontSize: 22,
                        color: Colors.black
                    ),
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => add_contact_card()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent.withOpacity(0.1),
                  ),
                  child: const Text(
                    "\n Exo 3",textAlign: TextAlign.center,
                    style: TextStyle(
                     // fontFamily: 'PressStart',
                      color: Colors.black,
                      fontSize: 22,
                    ),
                  ),
                ),
                const Text(
                  '',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'PressStart',
                    color: Colors.black,
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
