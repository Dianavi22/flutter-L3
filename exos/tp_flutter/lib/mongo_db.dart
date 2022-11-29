import 'dart:developer';
import 'package:mongo_dart/mongo_dart.dart';
import 'add_card_bdd.dart';

class MongoDatabase {
  static connect() async {
    var db = await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    var status = db.serverStatus();
    print(status);
    var collection = db.collection(COLLECTION_NAME);
    // await collection.insertMany([
    //  {"username": "mp1", "name": "Jado1", "email": "jbouiges@gmail.com1"},
    //  {"username": "mp2", "name": "Jado2", "email": "jbouiges2@gmail.com"},
    // ]);
    // print(await collection.find().toList());

    // await collection.updateMany(where.eq('username', 'mp'), modify.set('name','Jade'));
    print(await collection.find().toList());
    await collection.deleteOne({"username": "mp"});
    await collection.deleteMany({"username": "mp1"});
  }
}
