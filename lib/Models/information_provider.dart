import 'package:cpr_app/Models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppDataProvider with ChangeNotifier {
  User user;

  bool _isLoading = false;
  bool _userIsInitialised = false;

  bool get isLoading => _isLoading;
  bool get userIsInitialised => _userIsInitialised;

  AppDataProvider() {
    user = User();
    preparePreferences();
  }

  Future<void> preparePreferences() async {
    _isLoading = true;
    notifyListeners();
    SharedPreferences pref = await SharedPreferences.getInstance();
    if (pref.getKeys().length == 0) {
      print("user is not initialized");
      _userIsInitialised = false;
    } else {
      print(pref.get("nameValue"));
      user.nameValue = pref.getString('nameValue');
      user.dateValue = pref.getString('dateValue');
      user.genderValue = pref.getString('genderValue');
      user.bloodValue = pref.getString('bloodValue');
      user.heightValue = pref.getString('heightValue');
      user.weightValue = pref.getString('weightValue');
      user.medicalConditionsValue = pref.getString('medicalConditionsValue');
      user.medicalNotesValue = pref.getString('medicalNotesValue');
      user.cnt1Name = pref.getString('cnt1Name');
      user.cnt1Phone = pref.getString('cnt1Phone');
      user.cnt2Name = pref.getString('cnt2Name');
      user.cnt2Phone = pref.getString('cnt2Phone');

      _userIsInitialised = true;
    }
    _isLoading = false;
    notifyListeners();
  }

  Future<void> updateUserInformation({
    String dateValue = "",
    String genderValue = "Male",
    String bloodValue = "A+ve",
    String nameValue = "",
    String heightValue = "",
    String weightValue = "",
    String medicalConditionsValue = "",
    String medicalNotesValue = "",
    String cnt1Name = "",
    String cnt1Phone = "",
    String cnt2Name = "",
    String cnt2Phone = "",
  }) async {
    _isLoading = true;
    notifyListeners();
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('nameValue', nameValue);
    await pref.setString('dateValue', dateValue);
    await pref.setString('genderValue', genderValue);
    await pref.setString('bloodValue', bloodValue);
    await pref.setString('heightValue', heightValue);
    await pref.setString('weightValue', weightValue);
    await pref.setString('medicalConditionsValue', medicalConditionsValue);
    await pref.setString('medicalNotesValue', medicalNotesValue);
    await pref.setString('cnt1Name', cnt1Name);
    await pref.setString('cnt2Name', cnt2Name);
    await pref.setString('cnt1Phone', cnt1Phone);
    await pref.setString('cnt2Phone', cnt2Phone);

    print(pref.getKeys());
    print(pref.getString('cnt1Name'));
    user.nameValue = pref.getString('nameValue');
    user.dateValue = pref.getString('dateValue');
    user.genderValue = pref.getString('genderValue');
    user.bloodValue = pref.getString('bloodValue');
    user.heightValue = pref.getString('heightValue');
    user.weightValue = pref.getString('weightValue');
    user.medicalConditionsValue = pref.getString('medicalConditionsValue');
    user.medicalNotesValue = pref.getString('medicalNotesValue');
    user.cnt1Name = pref.getString('cnt1Name');
    user.cnt1Phone = pref.getString('cnt1Phone');
    user.cnt2Name = pref.getString('cnt2Name');
    user.cnt2Phone = pref.getString('cnt2Phone');

    _isLoading = false;
    notifyListeners();
  }
}
