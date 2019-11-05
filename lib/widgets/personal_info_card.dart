import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/information_provider.dart';
import 'general_info.dart';
import 'medical_conditions.dart';
import 'medical_notes.dart';

class PersonalInfoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (BuildContext context, AppDataProvider model, _) {
      return Card(
        margin: EdgeInsets.only(top: 16.0, bottom: 16.0, left: 4.0, right: 4.0),
        elevation: 5.0,
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
//      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 16.0,
            ),
            GeneralInfo(
              name: model.user.nameValue,
              dateOfBirth: model.user.dateValue,
              bloodGroup: model.user.bloodValue,
              sexType: model.user.genderValue,
              weight: double.parse(model.user.weightValue),
              height: int.parse(model.user.heightValue),
            ),
            SizedBox(height: 8.0),
            Divider(
              thickness: 1.0,
            ),
            MedicalConditions(
              medConditions: model.user.medicalConditionsValue.split(','),
            ),
            Divider(
              thickness: 1.0,
            ),
            MedicalNotes(
              medNotes: model.user.medicalNotesValue.split(','),
            ),
//            Divider(
//              thickness: 1.0,
//            ),
//            Medications(
//              medications: <String>[
//                "Paracetamol",
//                "Rabiprojol",
//                "Adrenaline Syringe",
//              ],
//            ),
          ],
        ),
      );
    });
  }
}
