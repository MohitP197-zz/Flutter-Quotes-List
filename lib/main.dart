import 'package:flutter/material.dart';
import './model/quote.dart';
import 'class/quote_cart.dart';

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
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          }
          ),).toList(),
      ),
    );
  }
}
