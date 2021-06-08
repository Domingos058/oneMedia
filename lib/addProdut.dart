import 'package:flutter/material.dart';

class Prod extends StatefulWidget {
  @override
  _ProdState createState() => _ProdState();
}

class _ProdState extends State<Prod> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(decoration: InputDecoration(
        border: OutlineInputBorder(),
    hintText: 'Produto'),
    ),
    );
  }
}
