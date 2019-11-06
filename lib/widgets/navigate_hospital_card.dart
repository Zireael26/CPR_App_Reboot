import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigateToHospital extends StatefulWidget {
  @override
  _NavigateToHospitalState createState() => _NavigateToHospitalState();
}

class _NavigateToHospitalState extends State<NavigateToHospital> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () {
          openMaps("Nearest Hospital");
        },
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)),
          elevation: 12.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.local_hospital,
                  color: Theme
                      .of(context)
                      .accentColor,
                ),
                Container(
                  width: 16.0,
                ),
                Text(
                  "Navigate to the nearest hospital",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Icon(Icons.navigate_next),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void openMaps(String event) async {
    String query = Uri.encodeComponent(event);
    String googleUrl = "https://www.google.com/maps/search/?api=1&query=$query";

    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    }
  }
}

