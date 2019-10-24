import 'package:cpr_app/widgets/contact_card.dart';
import 'package:flutter/material.dart';

class EmergencyContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 24.0),
            child: Text(
              "EMERGENCY CONTACTS",
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.black54,
                letterSpacing: 4.0,
              ),
            ),
          ),
          EmergencyContactCard("Mom", "+91 9873417040"),
          Divider(
            thickness: 1.0,
            indent: 16.0,
            endIndent: 16.0,
          ),
          EmergencyContactCard("Dad", "+91 9891460560"),
          SizedBox(height: 16.0)
        ],
      ),
    );
  }
}
