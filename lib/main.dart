import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Gial Ackbar', text: 'It\'s a trap!', image: 'assets/giaA.jpg'),
    Quote(author: 'Obi-Wan Kenobi', text: 'Helo there!', image: 'assets/ob.jpg'),
    Quote(author: 'General Grievous', text: 'General Kenobi. You are a bold one.', image: 'assets/Grv.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          title: Text("Awesome Quotes"), backgroundColor: Colors.redAccent),
      body: Column(
          children: quotes
              .map((quote) => new QuoteCard(
                    quote: quote,
                    delete: () {
                      setState(() {
                        quotes.remove(quote);
                      });
                    }
                  ))
              .toList()),
    );
  }
}
