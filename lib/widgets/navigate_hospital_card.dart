import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigateToHospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        elevation: 8.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.local_hospital,
                color: Theme.of(context).accentColor,
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
    );
  }
}
