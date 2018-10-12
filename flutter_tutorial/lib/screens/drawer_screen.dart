import 'package:flutter/material.dart';
import './about_screen.dart';
import './my_orders_screen.dart';
import './user_picture_screen.dart';

class DrawerScreen extends StatefulWidget {
  @override
  DrawerScreenState createState() {
    return new DrawerScreenState();
  }
}

class DrawerScreenState extends State<DrawerScreen> {
  String currentProfilePicture =
      "https://www.irreverentgent.com/wp-content/uploads/2018/03/Awesome-Profile-Pictures-for-Guys-look-away2.jpg";
  String otherProfilePicture =
      "https://technoxyz.com/wp-content/uploads/2018/05/Stylish-WhatsApp-DP-Images-for-Boys-Cool-Profile-Pictures-2018-2.jpg";
  String backupProfilePicture;

  String currentUsername = "Vijay Ganganapalli";
  String otherUsername = "Vijun Ganganapalli";
  String backupUsername;

  String currentUserEmail = "vijayganganapalli@gmail.com";
  String otherUserEmail = "vijunganganapalli@gmail.com";
  String backupUserEmail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer tutorial"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(currentProfilePicture),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UserProfileScreen(
                            title: currentUsername,
                            image: currentProfilePicture,
                          ),
                    ),
                  );
                },
              ),
              accountName: Text(currentUsername),
              accountEmail: Text(currentUserEmail),
              otherAccountsPictures: <Widget>[
                GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(otherProfilePicture),
                  ),
                  onTap: () => _buildSwitchUser(),
                ),
              ],
            ),
            _buildListTile(context, Icons.home, "Home"),
            _buildListTile(context, Icons.shopping_cart, "My Orders"),
            _buildListTile(context, Icons.help, "About"),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(BuildContext context, IconData iconData, String title) {
    return InkWell(
      child: ListTile(
        leading: Icon(iconData),
        title: Text(title),
      ),
      onTap: () {
        if (title.contains("Home")) {
          Navigator.of(context).pop();
        } else if (title.contains("About")) {
          Navigator.of(context).pop();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => About(title: title),
            ),
          );
        } else if (title.contains("My Orders")) {
          Navigator.of(context).pop();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyOrders(title: title),
            ),
          );
        }
      },
    );
  }

  void _buildSwitchUser() {
    this.setState(() {
      backupProfilePicture = currentProfilePicture;
      currentProfilePicture = otherProfilePicture;
      otherProfilePicture = backupProfilePicture;

      backupUsername = currentUsername;
      currentUsername = otherUsername;
      otherUsername = backupUsername;

      backupUserEmail = currentUserEmail;
      currentUserEmail = otherUserEmail;
      otherUserEmail = backupUserEmail;
    });
  }
}
