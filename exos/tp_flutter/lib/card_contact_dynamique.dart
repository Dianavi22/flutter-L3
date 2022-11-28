import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
Random _rnd = Random();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

class card_contact_dynamique extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _card_contact_dynamique();
  }
}

//class person {
// var name = ['Dallas', 'Wonka', 'Sparrow', 'Potter' ];
// var firstname = ['Corben', 'Willy', 'Jack', 'Harry'];
// }

class _card_contact_dynamique extends State<card_contact_dynamique> {
  Widget CreateCard() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(Icons.face, size: 70),
            title: Text('$nom',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text('$prenom', style: TextStyle(color: Colors.white)),
          ),
          Text('', style: TextStyle(color: Colors.white)),
          Text('$nom@email.com', style: TextStyle(color: Colors.white)),
          Text('', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  void RefreshList() {
    setState(() {
      list_card.add(CreateCard());
    });
  }

  var nom = getRandomString(10) as String;
  var prenom = getRandomString(10) as String;
  var nb_card = 1;
  var list_card = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              color: Colors.white,
            ),
            onPressed: () {
              print('Poyo');
            },
          )
        ],
      ),

      body: ListView.builder(
          itemCount: list_card.length,
          itemBuilder: (BuildContext context, int index) {
            return list_card[index];
          }),

      floatingActionButton: FloatingActionButton(
          onPressed:RefreshList,
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add)),
    );
  }
}
