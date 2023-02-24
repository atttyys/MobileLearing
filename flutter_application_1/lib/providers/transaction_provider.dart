import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/model/transaction.dart';

class TransactionProvider with ChangeNotifier {
  List<Transaction> transactions = [
  ];

  List<Transaction> getTransaction(){
    return transactions;
  }
  void addTransaction(Transaction statement){
    transactions.add(statement);
    notifyListeners();
  }
}
