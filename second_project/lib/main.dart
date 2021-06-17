import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:second_project/models/transaction.dart';
import 'package:second_project/widgets/new_transaction.dart';
import 'package:second_project/widgets/transaction_list.dart';
import 'package:second_project/widgets/user_transactions.dart';

void main() {
  runApp(SecondApp());
}

class SecondApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expenses",
      theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.amber,
          fontFamily: 'Quicksand',
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
          appBarTheme: AppBarTheme(
            textTheme: ThemeData.light().textTheme.copyWith(
                  headline6: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
          )),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Transaction> _userTransactions = [];

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

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (bCtx) {
          return NewTransaction(_addTransaction);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expenses"),
        actions: [
          IconButton(
              onPressed: () => {_startAddNewTransaction(context)},
              icon: Icon(Icons.add))
        ],
      ),
      body: ListView(
        children: [
          Card(
            child: Container(
              child: Text("chart"),
              width: double.infinity,
            ),
            elevation: 5,
          ),
          TransactionList(_userTransactions)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {_startAddNewTransaction(context)},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
