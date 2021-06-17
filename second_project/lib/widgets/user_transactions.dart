import 'package:flutter/material.dart';
import 'package:second_project/models/transaction.dart';
import 'package:second_project/widgets/new_transaction.dart';
import 'package:second_project/widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 1,
      title: 'Shoes',
      amount: 10.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 2,
      title: 'Potatoes',
      amount: 22.00,
      date: DateTime.now(),
    ),
  ];

  void _addTransaction(String title, double amount) {
    setState(() {
      this._userTransactions.add(Transaction(
            id: this._userTransactions.length,
            title: title,
            amount: amount,
            date: DateTime.now(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
