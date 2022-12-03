import 'package:ecurie_party/Pages/profil.dart';
import 'package:ecurie_party/main.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:ecurie_party/models/horse.dart';
import 'actualites.dart';
import 'add_event_page.dart';
import 'calendrier.dart';
import 'package:ecurie_party/db/cheval_controller.dart';

class cheval_list extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _cheval_list();
  }
}

class _cheval_list extends State<cheval_list> {

  bool? isHere = false;
  Widget CreateCard(Horse horse) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: _colorBottumNavBar,
      elevation: 10,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                'https://www.bowdenpr.co.uk/wp-content/uploads/2020/05/Hollie-Doyle-Flat-Jockey-297x300.jpg',
                //image
              ),
            ),
            title: Text(horse.name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Propriétaire : " + horse.owner,
                    style: TextStyle(color: Colors.white)),
                Text("Pelage : " + horse.color,
                    style: TextStyle(color: Colors.white)),
                Text("Âge : " + horse.age.toString(),
                    style: TextStyle(color: Colors.white))

              ],
            )

          ),


          Visibility(
            child:
            CheckboxListTile(
              value: isHere,
              onChanged: (bool? value) {
                setState(() {
                  isHere = value;
                });
              },

            ), visible: false,),
        ],
      ),
    );
  }

   var list_card = [];

  void RefreshList(Horse horse) {
    setState(() {
      list_card.add(horse);
    });
  }

  bool? valid = false;



  Color _colorFond = const Color(0xFFFFF3E0);
  Color _colorButton = const Color(0xFF730800);
  Color _colorBottumNavBar = const Color(0xFF8D6E63);

  getDbHorse() async {
    List<Horse> temp = await HorseController.getListHorse(MyApp.myDb);
    setState(() {
      list_card = temp;
    });
  }
  @override
  Widget build(BuildContext context) {
    getDbHorse();
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: _colorFond,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          // <-- SCAFFOLD WITH TRANSPARENT BG
          appBar: AppBar(
            // <-- APPBAR WITH TRANSPARENT BG
              elevation: 0,
              backgroundColor: _colorButton,
              centerTitle: true,
              title: Text('Liste des chevaux')),
          bottomNavigationBar: BottomAppBar(
            color: _colorFond,

            // <-- APPBAR WITH TRANSPARENT BG
            elevation: 0,

            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                IconButton(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  icon: Icon(
                    Icons.article,
                    size: 40,
                    color: _colorBottumNavBar,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => actualites()));
                    // do something
                  },
                ),
                IconButton(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  icon: Icon(
                    Icons.add,
                    size: 40,
                    color: _colorBottumNavBar,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => add_event_page()));
                    // do something
                  },
                ),

                IconButton(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  icon: Icon(
                    Icons.calendar_month,
                    size: 40,
                    color: _colorBottumNavBar,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => calendrier()));
                    // do something
                  },
                ),
                IconButton(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  icon: Icon(
                    Icons.face,
                    color: _colorBottumNavBar,
                    size: 40,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => profil()));
                    // do something
                  },
                ),
                // IconButton(icon: Icon(Icons.search), onPressed: () {},),
              ],
            ),
          ),

          body: ListView.builder(
              itemCount: list_card.length,
              itemBuilder: (BuildContext context, int index) {
                return CreateCard(list_card[index]);

              }),
        ),
      ],
    );
  }
}
