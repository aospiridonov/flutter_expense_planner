import 'package:flutter/material.dart';
import '../models/transaction.dart';

import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transations;

  TransactionList(this.transations);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: transations.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  'No transaction added yet!',
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 200.0,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5.0,
                  margin: EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 5.0,
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      child: Padding(
                        padding: EdgeInsets.all(6.0),
                        child: FittedBox(
                          child: Text('\$ ${transations[index].amount}'),
                        ),
                      ),
                    ),
                    title: Text(
                      transations[index].title,
                      style: Theme.of(context).textTheme.title,
                    ),
                    subtitle: Text(
                        DateFormat.yMMMd().format(transations[index].date)),
                  ),
                );
              },
              itemCount: transations.length,
            ),
    );
  }
}
