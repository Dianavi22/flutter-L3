import 'package:flutter/material.dart';
class card_contact extends StatelessWidget {
  const card_contact({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
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
            onPressed: () { print('Poyo');
            },
          )
        ],
      ),

      body: Center(
        child: Column(
          children: [
            Container(
              width: 500,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.grey,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    ListTile(
                      leading: Icon(Icons.face, size: 70),
                      title: Text('Nom', style: TextStyle(color: Colors.white)),
                      subtitle: Text(
                          'Prenom', style: TextStyle(color: Colors.white)),
                    ),
                    Text('user@email.com', style: TextStyle(color: Colors.white)),
                    Text('', style: TextStyle(color: Colors.white)),
                  ],
                ),

              ),

            ),
            Container(
              width: 500,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.grey,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    ListTile(
                      leading: Icon(Icons.face, size: 70),
                      title: Text('Nom', style: TextStyle(color: Colors.white)),
                      subtitle: Text(
                          'Prenom', style: TextStyle(color: Colors.white)),
                    ),
                    Text('user@email.com', style: TextStyle(color: Colors.white)),
                    Text('', style: TextStyle(color: Colors.white)),
                  ],
                ),

              ),

            ),
            Container(
              width: 500,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.grey,
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    ListTile(
                      leading: Icon(Icons.face, size: 70),
                      title: Text('Nom', style: TextStyle(color: Colors.white)),
                      subtitle: Text(
                          'Prenom', style: TextStyle(color: Colors.white)),
                    ),
                    Text('user@email.com', style: TextStyle(color: Colors.white)),
                    Text('', style: TextStyle(color: Colors.white)),
                  ],
                ),

              ),

            ),
          ],
        ),
      ),

    );
  }
}