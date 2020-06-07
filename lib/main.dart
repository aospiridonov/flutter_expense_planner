import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Transaction> transations = [
      Transaction(
        id: "id_1",
        title: "New Shoes",
        amount: 12.0,
        date: DateTime.now(),
      ),
      Transaction(
        id: "id_2",
        title: "Weekly Groceries",
        amount: 10.0,
        date: DateTime.now(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('Chart'),
              elevation: 5.0,
            ),
          ),
          Column(
            children: transations
                .map((transation) => Card(
                        child: Row(
                      children: <Widget>[
                        Container(
                          child: Text(
                            transation.amount.toString(),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Text(transation.title),
                            Text(transation.date.toString()),
                          ],
                        )
                      ],
                    )))
                .toList(),
          )
        ],
      ),
    );
  }
}
