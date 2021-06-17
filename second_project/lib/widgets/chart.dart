import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:second_project/models/transaction.dart';

class Chart extends StatelessWidget {
  final List<Transaction> _transactions;

  Chart(this._transactions);

  List<Map<String, Object>> get groupedTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(
        Duration(days: index),
      );
      double totalSum = 0;
      for (Transaction tx in _transactions) {
        if (tx.date?.day == weekDay.day &&
            tx.date?.month == weekDay.month &&
            tx.date?.year == weekDay.year) totalSum += tx.amount;
      }
      return {'day': DateFormat.E(weekDay), 'amount': 9.99};
    });
  }

  //const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: [],
      ),
    );
  }
}
