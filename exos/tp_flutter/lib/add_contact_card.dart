import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:tp_flutter/pet_class.dart';
import 'package:tp_flutter/user.dart';

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
Random _rnd = Random();

String getRandomString(int length) =>
    String.fromCharCodes(Iterable.generate(
        length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

class add_contact_card extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _add_contact_card();
  }
}

//class person {
// var name = ['Dallas', 'Wonka', 'Sparrow', 'Potter' ];
// var firstname = ['Corben', 'Willy', 'Jack', 'Harry'];
// }


class _add_contact_card extends State<add_contact_card> {
  Widget CreateCard(User user) {
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
            // leading: value,
            title: Text(user.name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text(user.firstname, style: TextStyle(color: Colors.white)),
          ),
          Text('', style: TextStyle(color: Colors.white)),
          Text(user.email, style: TextStyle(color: Colors.white)),
          Text('', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  void RefreshList(User user) {
    setState(() {
      list_card.add(CreateCard(user));
    });
  }



  var nom = 'c';
  var prenom = 'c';
  var nb_card = 1;
  var list_card = [];

  final _formKey = GlobalKey<FormState>();
  TextEditingController NameController = TextEditingController();
  TextEditingController FirstnameController = TextEditingController();
  TextEditingController MailController = TextEditingController();


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
                  builder: (BuildContext context) =>
                      AlertDialog(
                        title: const Text("Ajouter des cards"),


                        content: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                maxLength: 25,
                                controller: NameController,
                                decoration: const InputDecoration(
                                    labelText: 'Nom',
                                    border: OutlineInputBorder()),
                                validator: (textNom) {
                                  if (textNom!.isEmpty) {
                                    return 'Veuillez saisir un texte';
                                  }
                                  return null;
                                },
                              ),
                              TextFormField(
                                maxLength: 25,
                                controller: FirstnameController,
                                decoration: const InputDecoration(
                                    labelText: 'Prénom',
                                    border: OutlineInputBorder()),
                                validator: (textPrenom) {
                                  if (textPrenom!.isEmpty) {
                                    return 'Veuillez saisir un texte';
                                  }
                                  return null;
                                },
                              ),
                              TextFormField(
                                maxLength: 25,
                                controller: MailController,
                                decoration: const InputDecoration(
                                    labelText: 'Email',

                                    border: OutlineInputBorder()),
                                validator: (textMail) {
                                  if (textMail!.isEmpty) {
                                    return 'Veuillez saisir un texte';
                                  }
                                  return null;
                                },

                              ),
                            ],
                          ),
                        ),


                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                User user = User(NameController.text, FirstnameController.text, MailController.text);
                                RefreshList(user);
                                Navigator.of(context).pop();
                              }

                            },
                            child: Container(
                              color: Colors.white,
                              padding: const EdgeInsets.all(14),
                              child: const Text("okay"),
                            ),
                          ),
                        ],
                      ),); // RefreshList();
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
