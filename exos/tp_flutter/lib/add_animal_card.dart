import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:tp_flutter/pet_class.dart';

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
Random _rnd = Random();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

class add_animal_card extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _add_animal_card();
  }
}


enum animal_list {
  chien,
  oiseau,
}

class _add_animal_card extends State<add_animal_card> {
  Widget CreateCard(Icon value, String nom, String talk) {
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
            leading: value,
            title: Text('$nom',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text('$talk', style: TextStyle(color: Colors.white)),
          ),
          Text('', style: TextStyle(color: Colors.white)),
          Text('$nom@email.com', style: TextStyle(color: Colors.white)),
          Text('', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  void RefreshList(value, String name, String talk) {
    setState(() {
      list_card.add(CreateCard(value, name, talk));
    });
  }


  var nb_card = 1;
  var list_card = [];

  void Refresh(animal_list? value) {
    animal image;
    animal nom;
    animal talking;
    if (value == animal_list.chien) {
      image = chien();
      nom = chien();
      talking = chien();

    } else {
      image = oiseau();
      nom = oiseau();
      talking = oiseau();
    }
    setState(() => _animal = value);
    RefreshList(image.icon, nom.name, talking.talk);
  }

  animal_list? _animal = animal_list.chien;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      // <-- SCAFFOLD WITH TRANSPARENT BG
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        // <-- APPBAR WITH TRANSPARENT BG
        elevation: 0,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text("Animaux"),
                    content: Column(children: [
                      RadioListTile(
                          title: Text("oiseau"),
                          value: animal_list.oiseau,
                          groupValue: _animal,
                          onChanged: (value) {
                            Refresh(value);
                            Navigator.of(context).pop();
                          }),
                      RadioListTile(
                          title: Text("chien"),
                          value: animal_list.chien,
                          groupValue: _animal,
                          onChanged: (value) {
                            Refresh(value);
                            Navigator.of(context).pop();
                          }),

                    ]),
                    actions: <Widget>[

                    ],
                  ),
                ); // RefreshList();
              }
              // },
              )
        ],
      ),

      body: ListView.builder(
          itemCount: list_card.length,
          itemBuilder: (BuildContext context, int index) {
            return list_card[index];
          }),
    );
  }
}
