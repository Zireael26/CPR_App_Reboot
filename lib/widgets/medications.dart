import 'package:flutter/material.dart';

class Medications extends StatefulWidget {
  final List<String> medications;

  const Medications({this.medications});

  @override
  _MedicationsState createState() => _MedicationsState();
}

class _MedicationsState extends State<Medications> {
  @override
  Widget build(BuildContext context) {
    String meds = "";
    for (String str in widget.medications) {
      meds += "• " + str + "\n";
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              top: 16.0, left: 16.0, right: 16.0, bottom: 8.0),
          child: Text(
            "MEDICATIONS",
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
            meds,
            style: TextStyle(fontSize: 16.0,),
          ),
        ),
      ],
    );
  }
}
