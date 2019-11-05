import 'package:cpr_app/pages/edit_medical_information.dart';
import 'package:cpr_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class SideNavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.insert_drive_file),
            title: Text("Instructions"),
//            selected: true,
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text("Enter medical data"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return EditMedicalInformationPage();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("About us"),
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => EditMedicalInformationPageForm(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
