import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:tp_flutter/pet_class.dart';
import 'package:tp_flutter/user.dart';
import 'seconde_page.dart';



class add_card_form extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _add_card_form();
  }


}
class _add_card_form extends State<add_card_form> {
  Widget CreateCard(animal animal) {

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
             leading: animal.icon,
            title: Text(animal.name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text(animal.talk, style: TextStyle(color: Colors.white)),
          ),
          Text('', style: TextStyle(color: Colors.white)),
         // Text(user.email, style: TextStyle(color: Colors.white)),
          Text('', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  List<animal> list_card = [];

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
              onPressed: () {Navigator.of(context).pushNamed(seconde_page.tag, arguments: list_card).then((_) => setState(() {}));// RefreshList();
              }
            // },
          )
        ],
      ),

      body:GridView.builder(
        itemCount: list_card.length,
        itemBuilder: (context, index) => CreateCard(list_card[index]),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2,
        ),
      )
    );
  }
}


