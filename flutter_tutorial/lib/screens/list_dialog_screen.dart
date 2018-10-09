import 'dart:async';

import 'package:flutter/material.dart';

class ListAndDialogScreen extends StatefulWidget {
  @override
  _ListAndDialogScreenState createState() => _ListAndDialogScreenState();
}

class _ListAndDialogScreenState extends State<ListAndDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List and dialog tutorial"),
      ),
      body: buildList(),
    );
  }

  Widget buildList() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.face, size: 42.0,),
          title: Text("User name"),
          subtitle: Text("Online"),
          trailing: FlatButton(
              child: Text(
                "Remove",
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () {
                buildRemoveAlertDialog(context).then((value) {
                  debugPrint("Value is $value");
                });
              }),
        );
      },
    );
  }

  Future<bool> buildRemoveAlertDialog(context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text("Are you sure ?"),
            actions: <Widget>[
              FlatButton(
                child: Text("Cancel"),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              FlatButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              ),
            ],
          );
        });
  }
}
