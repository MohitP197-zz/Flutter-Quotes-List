import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuoteLists(),
    ));

class QuoteLists extends StatefulWidget {
  @override
  _QuoteListsState createState() => _QuoteListsState();
}

class _QuoteListsState extends State<QuoteLists> {
  List<String> quotes = [
    'Be yourself; everyone else is already taken',
    'I have nothing to declare except my genius',
    'The truth is rarely pure and never simple',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
            'Awesome Quotes',
          ),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          // Cycle through the quotes list and perform a function for each item and for each item take
          // that string (quote) and return text widget
          children: quotes.map((quote) => Text(quote)).toList(),
        ));
  }
}
