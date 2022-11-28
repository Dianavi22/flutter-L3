import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';

void main() => runApp(add_contact_card());

class add_contact_card extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _add_contact_card();
  }
}

class _add_contact_card extends State<add_contact_card> {

  Widget CreateCard(BuildContext context, index) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      elevation: 10,
      child: Column(

        children: [
          ListTile(
            leading: Icon(Icons.face, size: 70),
            title: Text('nom',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text('prenom', style: TextStyle(color: Colors.white)),
          ),
          Text('', style: TextStyle(color: Colors.white)),
          Text('@email.com', style: TextStyle(color: Colors.white)),
          Text('', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  void RefreshList() {
    setState(() {
      list_card;
    });
  }
  // var nom = as String;
  // var prenom =  as String;
  var nb_card = 1;
  var list_card = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Scaffold(
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
                list_card.add(context);
                RefreshList();
              },
            )
          ],
        ),

        body:ListView.builder(
                itemCount: list_card.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        width: 500,
                        child: Column(
                          children: [
                            CreateCard(context, index),
                          ],
                        ),
                      ),
                    ],
                  );
                }),


        ),



    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return 'Veuillez saisir un texte';
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
