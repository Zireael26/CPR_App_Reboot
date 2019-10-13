import 'package:flutter/material.dart';

import 'general_info.dart';
import 'medical_conditions.dart';
import 'medical_notes.dart';
import 'medications.dart';

class PersonalInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 16.0, bottom: 16.0, left: 4.0, right: 4.0),
      elevation: 4.0,
      color: Colors.white,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GeneralInfo(
            name: "Abhishek Kaushik",
            dateOfBirth: DateTime.parse("1998-01-26"),
            bloodGroup: "B+",
            sexType: "Male",
            weight: 87,
            height: 185,
          ),
          Divider(
            thickness: 1.0,
          ),
          MedicalConditions(
            medConditions: <String>[
              "Clinical Depresseion",
              "Frequent Fractures",
              "Prone to falling",
            ],
          ),
          Divider(
            thickness: 1.0,
          ),
          MedicalNotes(
            medNotes: <String>[
              "Will get angry if not fed on time",
              "Allergic to penicillin",
            ],
          ),
          Divider(
            thickness: 1.0,
          ),
          Medications(
            medications: <String>[
              "Paracetamol",
              "Rabiprojol",
              "Adrenaline Syringe",
            ],
          ),
        ],
      ),
    );
  }
}
