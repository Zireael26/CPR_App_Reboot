import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GeneralInfo extends StatefulWidget {
  final String name;
  final String dateOfBirth;
  final String bloodGroup;
  final String sexType;
  final double weight;
  final int height;

  GeneralInfo(
      {this.name,
      this.dateOfBirth,
      this.bloodGroup,
      this.sexType,
      this.weight,
      this.height});

  @override
  _GeneralInfoState createState() => _GeneralInfoState();
}

class _GeneralInfoState extends State<GeneralInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0, bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          Container(height: 4.0),
          Text(
            "DOB: " + widget.dateOfBirth,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black54,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(height: 16.0),
          Row(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width / 2.2,
                  child: Text(
                    "Blood Type: " + widget.bloodGroup,
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                    ),
                  )),
              Text(
                "Weight: " + widget.weight.toString() + "kg",
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          Container(height: 4.0),
          Row(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width / 2.2,
                  child: Text(
                    "Sex: " + widget.sexType,
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                    ),
                  )),
              Text(
                "Height: " + widget.height.toString() + "cm",
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
