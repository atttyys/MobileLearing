import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

import '../model/transaction.dart';

class TransactionDB {
  String dbName;

  TransactionDB({required this.dbName});

  Future<Database> openDatabase() async {
    Directory appDirectory = await getApplicationDocumentsDirectory();
    String dbLocation = join(appDirectory.path, dbName);
    DatabaseFactory dbFactory = databaseFactoryIo;
    Database db = await dbFactory.openDatabase(dbLocation);
    return db;
  }

  Future<int> insertData(Transactions statement) async {
    var db = await this.openDatabase();
    var store = intMapStoreFactory.store("expense");

    var keyID = store.add(db, {
      "title": statement.title,
      "amount": statement.amount,
      "date": statement.date.toIso8601String()
    });
    db.close();
    return keyID;
  }

  Future<List<Transactions>> loadAllData() async {
    var db = await this.openDatabase();
    var store = intMapStoreFactory.store("expense");
    var snapshot = await store.find(db,
        finder: Finder(sortOrders: [SortOrder(Field.key, false)]));
    List<Transactions> transactionList = [];
    for (var record in snapshot) {
      transactionList.add(Transactions(
          title: record["title"].toString(),
          amount: double.parse(record["amount"].toString()),
          date: DateTime.parse(record["date"].toString())));
    }
    return transactionList;
  }
}
