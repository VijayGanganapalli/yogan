import 'package:flutter/material.dart';

class UserProfileScreen extends StatefulWidget {
  final title;
  final image;

  UserProfileScreen({Key key, this.title, this.image})
      : super(key: key);

  @override
  _UserProfileScreenState createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Center(
          child: Image.network(widget.image),
        ),
      ),
    );
  }
}
