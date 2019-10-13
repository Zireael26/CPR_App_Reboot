import 'package:flutter/material.dart';

class MedicalNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "MEDICAL NOTES",
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black54,
              letterSpacing: 4.0,
            ),
          ),
        ),
      ],
    );
  }
}
