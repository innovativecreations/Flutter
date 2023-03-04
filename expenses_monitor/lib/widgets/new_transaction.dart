// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final textController = TextEditingController();
  final amountController = TextEditingController();
  final Function addNewTx;

  NewTransaction(this.addNewTx);

  void addTx() {
    String tilteText = textController.text;
    double amountText = double.parse(amountController.text);
    if (tilteText.isEmpty || amountText <= 0) {
      return;
    }
    addNewTx(
      tilteText,
      amountText,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Title:"),
              controller: textController,
              onSubmitted: (_) => addTx(),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount:"),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => addTx(),
            ),
            TextButton(
              onPressed: addTx,
              style: TextButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 255, 0, 255)),
              child: Text(
                "Add Transaction",
              ),
            )
          ],
        ),
      ),
    );
  }
}
