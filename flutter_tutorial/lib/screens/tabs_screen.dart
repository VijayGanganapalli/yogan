import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tabs tutorial"),
        bottom: TabBar(
          controller: controller,
          tabs: <Widget>[
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bus),
            Icon(Icons.directions_transit),
          ],
        ),
      ),
      bottomNavigationBar: Material(
        color: Theme.of(context).primaryColor,
        child: TabBar(
          controller: controller,
          tabs: <Widget>[
            Icon(Icons.directions_bike),
            Icon(Icons.directions_bus),
            Icon(Icons.directions_transit),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          Icon(Icons.directions_bike, size: 50.0),
          Icon(Icons.directions_bus, size: 50.0),
          Icon(Icons.directions_transit, size: 50.0),
        ],
      ),
    );
  }
}
