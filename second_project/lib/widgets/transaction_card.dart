import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:second_project/models/transaction.dart';

class TransactionCard extends StatelessWidget {
  final Transaction tx;

  TransactionCard(this.tx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Container(
            child: Text(
              '\$${tx.amount?.toStringAsFixed(2)}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Theme.of(context).primaryColor,
              ),
            ),
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Theme.of(context).primaryColor,
                style: BorderStyle.solid,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tx.title.toString(),
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                DateFormat('dd-MM-yyyy').format(tx.date as DateTime),
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
