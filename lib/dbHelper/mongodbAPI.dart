

import 'package:mongo_dart/mongo_dart.dart';
import 'package:talabt/dbHelper/connectionString.dart';

class MongoDatabase {
  static var db, collectionUsers , collectionMovies;

  static connect() async {
    db = await Db.create("mongodb+srv://ahmedmahdya:imOABn8XZxX4YIT2@cluster0.uagnhjl.mongodb.net/sample_mflix?retryWrites=true&w=majority&appName=Cluster0");
    await db.open();

    collectionUsers = db.collection("users");
    collectionMovies = db.collection("movies");
  }

  static Future<List<Map<String, dynamic>>> ReadUsers() async {
    await connect();
    final data = await collectionUsers.find().toList();
    print(data);
    return data;
  }
  static Future<List<Map<String, dynamic>>> ReadMovies() async {
    await connect();
    final data = await collectionMovies.find(where.limit(25)).toList();


    print(data);
    return data;
  }
  static Future<void> insertData(Map<String, dynamic> document) async {
    await connect();
    await collectionUsers.insert(document);
  }
}

