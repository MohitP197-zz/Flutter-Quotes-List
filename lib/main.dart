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
        // Cycle through the quotes list and fire a function for each quote and for each quote
        // get a new instance of the quote card which is returning Widget and outputing quote data 
        // Curly braces are used to wrap the value when the items are in list
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  final Quote quote;

  // Named parameter is received and assigning to above local variable
  QuoteCard({this.quote});

  @override
  Widget build(BuildContext context) {
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
}
