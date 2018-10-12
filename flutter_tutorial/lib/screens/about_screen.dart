import 'package:flutter/material.dart';

class About extends StatefulWidget {
  final title;
  About({Key key, this.title}) : super(key: key);

  @override
  AboutState createState() {
    return new AboutState();
  }
}

class AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text("Welcome to About page"),
      ),
    );
  }
}
