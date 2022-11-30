import 'package:app_gestion_ecurie/Pages/add_event_page.dart';
import 'package:app_gestion_ecurie/Pages/profil.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:app_gestion_ecurie/Pages/calendrier.dart';

class actualites extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _actualites();
  }
}

class _actualites extends State<actualites> {
  Color _colorFond = const Color(0xFFFFF3E0);
  Color _colorButton = const Color(0xFFB71C1C);
  Color _colorBottumNavBar = const Color(0xFF8D6E63);
  final _formKey = GlobalKey<FormState>();
  TextEditingController NameController = TextEditingController();
  TextEditingController FirstnameController = TextEditingController();
  TextEditingController MailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: _colorFond,
          ),
        ),
        Scaffold(
          backgroundColor: _colorFond,
          appBar: AppBar(
              backgroundColor: _colorButton,
              centerTitle: true,
              title: Text('Fil d\'actualité')),
          bottomNavigationBar: BottomAppBar(
            color: _colorBottumNavBar,
            // <-- APPBAR WITH TRANSPARENT BG
            elevation: 0,

            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.article,
                    color: _colorFond,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => actualites()));
                    // do something
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.add,
                    color: _colorFond,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => add_event_page()));
                    // do something
                  },
                ),

                IconButton(
                  icon: Icon(
                    Icons.calendar_month,
                    color: _colorFond,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => calendrier()));
                    // do something
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.face,
                    color: _colorFond,
                  ),
                  onPressed: () {
                    Navigator.push(
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
          body: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder: (_, __, ___) => actualites()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent.withOpacity(0.1),
                      ),
                      child: Container(
                          width: 150,
                          height: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/images/cavalier.jpg',
                              height: 100.0,
                              width: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ))),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageRouteBuilder(
                              pageBuilder: (_, __, ___) => actualites()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent.withOpacity(0.1),
                    ),
                    child: SizedBox(
                        width: 150,
                        height: 150,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'assets/images/cheval.jpg',
                            height: 100.0,
                            width: 100.0,
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                ],
              ),
              Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: _colorBottumNavBar,
                  elevation: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        //  leading: Icon(Icons.add, size: 70),
                        title: Text('Endurance : Cergy ',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),

                        subtitle: Text('12/12 à 13:00',
                            style: TextStyle(color: Colors.white)),
                      ),
                      Text('', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
              Container(
                child: Card(
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
                          ),
                        ),
                        title: Text('Concours grand galop',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: Text('12/12 à 13:00 Conflans',
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: _colorBottumNavBar,
                  elevation: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text('Convention : La boucherie chevaline',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: Text('16/12 à 16:00',
                            style: TextStyle(color: Colors.white)),
                      ),
                      Text('', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}