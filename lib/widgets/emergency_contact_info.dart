import 'package:cpr_app/Models/information_provider.dart';
import 'package:cpr_app/widgets/contact_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmergencyContactInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: 4.0,
      child:
          Consumer(builder: (BuildContext context, AppDataProvider model, _) {
        return Column(
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
            EmergencyContactCard(
                model.user.cnt1Name, "+91 " + model.user.cnt1Phone),
            Divider(
              thickness: 1.0,
              indent: 16.0,
              endIndent: 16.0,
            ),
            EmergencyContactCard(
                model.user.cnt2Name, "+91 " + model.user.cnt2Phone),
            SizedBox(height: 16.0)
          ],
        );
      }),
    );
  }
}
