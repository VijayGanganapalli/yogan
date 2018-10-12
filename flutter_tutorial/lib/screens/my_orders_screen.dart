import 'package:flutter/material.dart';

class MyOrders extends StatefulWidget {
  final title;

  MyOrders({Key key, this.title}) : super(key: key);

  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text("Welcome to MyOrders page"),
      ),
    );
  }
}
