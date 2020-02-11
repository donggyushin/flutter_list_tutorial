import 'package:flutter/material.dart';
import 'package:flutter_list_tutorial/types/Quote.dart';
import 'Quote/Quote.dart';

class Quotes extends StatefulWidget {
  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<QuoteModel> quotes = [
    QuoteModel(
        text:
            "I'm selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you can't handle me at my worst, then you sure as hell don't deserve me at my best.",
        author: "Marilyn Monroe"),
    QuoteModel(
        text: "Be yourself; everyone else is already taken.",
        author: "Oscar Wilde"),
    QuoteModel(
        text:
            "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.",
        author: "Albert Einstein"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: quotes.map((quote) {
          int index = quotes.indexOf(quote);
          return Quote(
            quote: quote,
            deleteOneQuote: this.deleteOneQuote,
            index: index,
          );
        }).toList(),
      ),
    );
  }

  deleteOneQuote(int index) {
    setState(() {
      quotes.removeAt(index);
    });
  }
}
