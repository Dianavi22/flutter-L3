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
    if (value == animal_list.chien) {
      finalValue = Chien.create();
    } else {
      finalValue = Oiseau.create();
    }
    setState(() => _animal = value);
  }

  void RefreshList(Animal value) {
    setState(() {
      list_card.add(value);
    });
  }

   Animal finalValue = Chien.create();

  @override
  Widget build(BuildContext context) {
    list_card = ModalRoute.of(context)!.settings.arguments as List;
    State<StatefulWidget> createState() => _seconde_page();
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(color: Colors.white),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0,
            actions: <Widget>[
              IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: () {})
            ],
          ),
          body: Form(
            key: _formKey,
            child: Column(children: [
              RadioListTile(
                  title: const Text("oiseau"),
                  value: animal_list.oiseau,
                  groupValue: _animal,
                  onChanged: (value) {
                    Refresh(value);
                    //    Navigator.of(context).pop(Animal);
                  }),
              RadioListTile(
                  title: const Text("chien"),
                  value: animal_list.chien,
                  groupValue: _animal,
                  onChanged: (value) {
                    Refresh(value);
                    // Navigator.of(context).pop(Animal);
                  }),
              TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Animal animal = finalValue;
                    RefreshList(animal);
                    Navigator.of(context).pop();
                  }
                },
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(14),
                  child: const Text("okay"),
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
