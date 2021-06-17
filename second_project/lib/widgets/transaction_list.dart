import 'package:flutter/material.dart';
import 'package:second_project/models/transaction.dart';
import 'package:second_project/widgets/transaction_card.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _userTransactions;

  TransactionList(this._userTransactions);

  @override
  Widget build(BuildContext context) {
    return _userTransactions.isEmpty
        ? Column(
            children: [
              Text(
                'No transactions',
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                child: Image.asset(
                  'assets/images/waiting.png',
                  fit: BoxFit.cover,
                ),
              )
            ],
          )
        : Column(
            children:
                _userTransactions.map((tx) => TransactionCard(tx)).toList(),
          );
  }
}
