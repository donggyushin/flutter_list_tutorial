import 'package:flutter/material.dart';
import 'Quotes/Quotes.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('Quotes App'),
        backgroundColor: Colors.grey[900],
      ),
      body: Quotes(),
    );
  }
}
