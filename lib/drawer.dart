import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.move_to_inbox,
              text: 'Inbox',
              onTap: () {
                Navigator.pushNamed(context, '/Inbox');
              }),
          _drawerItem(
              icon: Icons.send,
              text: 'Outbox',
              onTap: () {
                Navigator.pushNamed(context, '/Outbox');
              }),
          _drawerItem(
              icon: Icons.error_rounded,
              text: 'Spam',
              onTap: () {
                Navigator.pushNamed(context, '/Spam');
              }),
          Divider(height: 25, thickness: 1),
          _drawerItem(
              icon: Icons.forum_outlined,
              text: 'Forums',
              onTap: () {
                Navigator.pushNamed(context, '/Forums');
              }),
          _drawerItem(
              icon: Icons.feedback,
              text: 'Promos',
              onTap: () {
                Navigator.pushNamed(context, '/Promos');
              }),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/ridho.jpeg'), fit: BoxFit.cover),
    ),
    accountName: Text('Ridho Pijak Imana'),
    accountEmail: Text('ridhopjk12@gmail.com'),
  );
}

Widget _drawerItem({IconData? icon, required String text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
