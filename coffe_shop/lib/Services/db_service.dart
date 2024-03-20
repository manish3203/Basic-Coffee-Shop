
import 'package:coffe_shop/Model/class_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;


//============================ CREATE DATABASE ===================================
void createDataBase() async{
  print("DataBase created");
  database = await openDatabase(
    join(await getDatabasesPath(), "user11DB.db"),
    version: 1,
    onCreate: (db, version) {
      return db.execute('''CREATE TABLE USER(
        name TEXT,
        email TEXT PRIMARY KEY,
        password TEXT
      )''');
    },
  );
} 


//============================ INSERT CREDENTIAL ===================================
Future insertCredential(UserCredential userObj) async{
  print("insert credit in database");
  final localDB = await database;

  await localDB.insert(
    "USER",
    userObj.userMap(),
    conflictAlgorithm: ConflictAlgorithm.replace
  );
}


//============================ FETCH CREDENTIAL ===================================
Future getUserCredential() async {
  print("Fetch database");
  final localDB = await database;

  // Await the result of the query method
  List<Map<String, Object?>> queryList = await localDB.query("USER");

  // Convert Object? to dynamic
  List<Map<String, dynamic>> dynamicQueryList = queryList.cast<Map<String, dynamic>>();

  for (int i = 0; i < dynamicQueryList.length; i++) {
    userCredentialList.add(
      UserCredential(
        name: dynamicQueryList[i]['name'],
        email: dynamicQueryList[i]['email'],
        password: dynamicQueryList[i]['password'],
      ),
    );
  }
  print(userCredentialList);
}


// List to store userCredentila and pass through login.dart file
List<UserCredential> userCredentialList = [];
