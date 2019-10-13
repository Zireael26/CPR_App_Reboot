import 'package:flutter/material.dart';

class MedicalNotes extends StatefulWidget {
  final List<String> medNotes;

  const MedicalNotes({this.medNotes});

  @override
  _MedicalNotesState createState() => _MedicalNotesState();
}

class _MedicalNotesState extends State<MedicalNotes> {
  @override
  Widget build(BuildContext context) {
    String notes = "";
    for (String str in widget.medNotes) {
      notes += "• " + str + "\n";
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              top: 16.0, left: 16.0, right: 16.0, bottom: 8.0),
          child: Text(
            "MEDICAL NOTES",
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
            notes,
            style: TextStyle(fontSize: 16.0,),
          ),
        ),
      ],
    );
  }
}
