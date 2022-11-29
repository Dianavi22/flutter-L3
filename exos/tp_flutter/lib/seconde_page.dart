import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tp_flutter/add_card_form.dart';
import 'package:tp_flutter/pet_class.dart';

class seconde_page extends StatefulWidget {
  static const tag = "second_page";

  @override
  State<StatefulWidget> createState() {
    return _seconde_page();
  }
}

enum animal_list {
  chien,
  oiseau,
}

class _seconde_page extends State<seconde_page> {
  var list_card = [];
  final _formKey = GlobalKey<FormState>();
  animal_list? _animal = animal_list.chien;

  void Refresh(animal_list? value) {
    animal image;
    animal photo;
    animal nom;
    animal talking;
    if (value == animal_list.chien) {
      image = chien();
      nom = chien();
      talking = chien();
      photo = chien();
    } else {
      image = oiseau();
      nom = oiseau();
      talking = oiseau();
      photo = oiseau();
    }
    setState(() => _animal = value);
    RefreshList(image.icon, nom.name, talking.talk, photo.img,);
  }

  void RefreshList(value, String name, String talk, Image img) {
    setState(() {
      list_card.add(animal);
    });
  }

  @override
  Widget build(BuildContext context) {
    List list_card = ModalRoute.of(context)!.settings.arguments as List;
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(color: Colors.white),
        ),
        Scaffold(
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
                  onPressed: () {}
                  // },
                  )
            ],
          ),

          body: Form(
            key: _formKey,
            child: Column(children: [
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
          ),
        ),
      ],
    );
  }
}
