import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyContactCard extends StatefulWidget {
  final String contactName;
  final String contactNumber;

  const EmergencyContactCard(this.contactName, this.contactNumber);

  @override
  _EmergencyContactCardState createState() {
    return _EmergencyContactCardState();
  }
}

class _EmergencyContactCardState extends State<EmergencyContactCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        top: 12.0,
        bottom: 12.0,
        right: 0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                widget.contactName,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: 2.0,
              ),
              Text(
                widget.contactNumber,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: Icon(Icons.phone, color: Theme.of(context).accentColor),
              onPressed: () => launch("tel://" + widget.contactNumber),
            ),
          )
        ],
      ),
    );
  }
}
