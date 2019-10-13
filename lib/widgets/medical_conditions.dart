import 'package:flutter/material.dart';

class MedicalConditions extends StatefulWidget {
  final List<String> medConditions;

  const MedicalConditions({this.medConditions});

  @override
  _MedicalConditionsState createState() => _MedicalConditionsState();
}

class _MedicalConditionsState extends State<MedicalConditions> {
  @override
  Widget build(BuildContext context) {
    String conditions = "";
    for (String str in widget.medConditions) {
      conditions += "• " + str + "\n";
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              top: 16.0, left: 16.0, right: 16.0, bottom: 8.0),
          child: Text(
            "MEDICAL CONDITIONS",
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black54,
              letterSpacing: 4.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: 16.0, right: 16.0, top: 8.0),
          child: Text(
            conditions,
            style: TextStyle(fontSize: 16.0,),
          ),
        ),
      ],
    );
  }
}
