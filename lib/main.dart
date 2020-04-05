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

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            )
          ],
        ),
      ),
    );
  }

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
              .map(
                (quote) => quoteTemplate(quote),
              )
              .toList(),
        ));
  }
}
