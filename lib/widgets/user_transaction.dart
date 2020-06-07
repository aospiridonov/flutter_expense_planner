import 'package:flutter/material.dart';
import './new_transation.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransations = [
    Transaction(
      id: "id_1",
      title: "New Shoes",
      amount: 11.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: "id_2",
      title: "Weekly Groceries",
      amount: 10.55,
      date: DateTime.now(),
    ),
  ];

  void _addTransaction(String title, double amount) {
    final newTransaction = Transaction(
        title: title,
        amount: amount,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransations.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransation(_addTransaction),
        TransactionList(_userTransations),
      ],
    );
  }
}
