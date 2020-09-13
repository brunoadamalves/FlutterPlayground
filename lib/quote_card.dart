import 'dart:ui';

import 'package:flutter/material.dart';

import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;

  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage(quote.image),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                quote.author,
                style: TextStyle(fontSize: 14, color: Colors.grey[800]),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                height: 10,
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      "\"" + quote.text + "\"",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                    ),
                  ),
                  SizedBox(height: 5),
                  FlatButton.icon(
                      onPressed: delete,
                      icon: Icon(Icons.delete),
                      label: Text('Delete quote'))
                ],
              ),
            ],
          ),
        ));
  }
}
