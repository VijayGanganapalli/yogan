import 'package:flutter/material.dart';
import './screens/list_dialog_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Tutorial",
      theme: ThemeData(
        primarySwatch: Colors.lime
      ),
      home: ListAndDialogScreen(),
    );
  }
}