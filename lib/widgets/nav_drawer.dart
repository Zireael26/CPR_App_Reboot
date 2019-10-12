import 'package:flutter/material.dart';

class SideNavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.edit),
            title: Text("Enter medical data"),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("About us"),
          ),
        ],
      ),
    );
  }
}
