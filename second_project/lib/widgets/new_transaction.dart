import 'package:flutter/material.dart';
import 'package:second_project/models/transaction.dart';

class NewTransaction extends StatefulWidget {
  final Function _addTransaction;

  NewTransaction(this._addTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enteredTitle = this.titleController.text;
    final enteredAmount = double.parse(this.amountController.text);
    if (enteredTitle.isEmpty || enteredAmount <= 0) return;

    this.widget._addTransaction(
          enteredTitle,
          enteredAmount,
        );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (val) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (val) => submitData(),
            ),
            TextButton(
              onPressed: submitData,
              child: Text('Add'),
              style: TextButton.styleFrom(
                primary: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
