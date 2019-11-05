class User {
  String dateValue = "";
  String genderValue = "Male";
  String bloodValue = "A+ve";
  String nameValue = "";
  String heightValue = "";
  String weightValue = "";
  String medicalConditionsValue = "";
  String medicalNotesValue = "";
  String cnt1Name = "";
  String cnt1Phone = "";
  String cnt2Name = "";
  String cnt2Phone = "";

  @override
  String toString() {
    // TODO: implement toString
    return nameValue +
        " " +
        dateValue +
        " " +
        genderValue +
        " " +
        bloodValue +
        " " +
        heightValue;
  }
}
