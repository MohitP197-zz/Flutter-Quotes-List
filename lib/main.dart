import 'package:flutter/material.dart';
import './model/quote.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuoteLists(),
    ));

class QuoteLists extends StatefulWidget {
  @override
  _QuoteListsState createState() => _QuoteListsState();
}

class _QuoteListsState extends State<QuoteLists> {
  List<Quote> quotes = [
    Quote(
      author: 'Osca Wilde',
      text: 'Be yourself; everyone else is already taken',
    ),
    Quote(
      author: 'Osca Wilde',
      text: 'Be yourself; everyone else is already taken',
    ),
    Quote(
      author: 'Osca Wilde',
      text: 'Be yourself; everyone else is already taken',
    ),
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
          // Curly braces are used to wrap the value when the items are in list
          children: quotes
              .map((quote) => Text('${quote.text} - ${quote.author}'))
              .toList(),
        ));
  }
}
