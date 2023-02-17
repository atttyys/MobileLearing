import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/model/transaction.dart';

class TransactionProvider with ChangeNotifier {
  List<Transaction> transactions = [
    Transaction(title: 'กระเป๋า', amount: 100, date: DateTime.now()),
    Transaction(title: 'เสื้อ', amount: 200, date: DateTime.now()),
    Transaction(title: 'กางเกง', amount: 300, date: DateTime.now()),
  ];

  List<Transaction> getTransaction(){
    return transactions;
  }
  void addTransaction(Transaction statement){
    transactions.add(statement);
    notifyListeners();
  }
}
