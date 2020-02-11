import 'package:flutter/material.dart';
import 'package:flutter_list_tutorial/types/Quote.dart';

class Quote extends StatefulWidget {
  final QuoteModel quote;
  final Function deleteOneQuote;
  final int index;
  Quote(
      {@required this.quote,
      @required this.deleteOneQuote,
      @required this.index});

  @override
  _QuoteState createState() =>
      _QuoteState(quote: quote, deleteOneQute: deleteOneQuote, index: index);
}

class _QuoteState extends State<Quote> {
  final QuoteModel quote;
  final Function deleteOneQute;
  final int index;
  _QuoteState(
      {Key key,
      @required this.quote,
      @required this.deleteOneQute,
      @required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
            child: Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.start,
              children: <Widget>[
                Text(
                  '${quote.text}',
                  style: TextStyle(
                      color: Colors.white, fontSize: 16.0, height: 1.4),
                ),
                Text(
                  ' - ',
                  style: TextStyle(
                      color: Colors.white, fontSize: 16.0, height: 1.4),
                ),
                Text(
                  '${quote.author}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    height: 1.4,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              RaisedButton.icon(
                onPressed: () {
                  deleteOneQute(index);
                },
                icon: Icon(Icons.delete),
                label: Text('Delete'),
                color: Colors.amber,
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Divider(
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
