import 'package:cpr_app/Models/information_provider.dart';
import 'package:cpr_app/Models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditMedicalInformationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, AppDataProvider model, _) {
        print(model.user.toString());
        return EditMedicalInformationPageForm(user: model.user);
      },
    );
  }
}

class EditMedicalInformationPageForm extends StatefulWidget {
  static const Color accent = Color.fromRGBO(255, 17, 64, 1.0);
  User user;

  EditMedicalInformationPageForm({this.user});

  @override
  _EditMedicalInformationPageFormState createState() =>
      _EditMedicalInformationPageFormState();
}

class _EditMedicalInformationPageFormState
    extends State<EditMedicalInformationPageForm> {
  @override
  void initState() {
    print(widget.user.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (BuildContext context, AppDataProvider model, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            _pressedSaveFab(context, model);
          },
          label: Text("Save"),
          icon: Icon(Icons.save),
        ),
        appBar: AppBar(
          elevation: 0,
          brightness: Brightness.light,
          title: Text(
            "Edit Information",
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.black),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Full Name",
                    style: Theme.of(context).textTheme.headline,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    initialValue: widget.user.nameValue,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: EditMedicalInformationPageForm.accent,
                          width: 1.0,
                        ),
                      ),
                      labelText: "Enter Full Name",
                    ),
                    onChanged: (value) {
                      widget.user.nameValue = value;
                    },
                  ),
                  SizedBox(height: 24),
                  Text(
                    "Date of birth",
                    style: Theme.of(context).textTheme.headline,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          widget.user.dateValue,
                          style: Theme.of(context).textTheme.subhead,
                        ),
                      ),
                      RaisedButton(
                        child: Text("Select Date of Birth"),
                        onPressed: () {
                          _selectDate();
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Sex",
                          style: Theme.of(context).textTheme.headline,
                        ),
                      ),
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          hint: Text("Select Gender"),
//                          isDense: true,
                          items: <String>["Male", "Female", "Other"]
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              child: Text(value),
                              value: value,
                            );
                          }).toList(),
                          value: widget.user.genderValue,
                          onChanged: (String val) {
                            setState(() {
                              widget.user.genderValue = val;
                            });
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Blood Type",
                          style: Theme.of(context).textTheme.headline,
                        ),
                      ),
                      Expanded(
                        child: DropdownButtonFormField<String>(
                          hint: Text("Select Blood Type"),
//                          isDense: true,
                          items: <String>[
                            "A+ve",
                            "A-ve",
                            "B+ve",
                            "B-ve",
                            "AB+ve",
                            "AB-ve",
                            "O+ve",
                            "O-ve",
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              child: Text(value),
                              value: value,
                            );
                          }).toList(),
                          value: widget.user.bloodValue,
                          onChanged: (String val) {
                            setState(() {
                              widget.user.bloodValue = val;
                            });
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Height",
                          style: Theme.of(context).textTheme.headline,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          onChanged: (value) {
                            widget.user.heightValue = value;
                          },
                          initialValue: widget.user.heightValue,
                          keyboardType: TextInputType.numberWithOptions(
                              signed: false, decimal: true),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: EditMedicalInformationPageForm.accent,
                                width: 1.0,
                              ),
                            ),
                            labelText: "Height",
                          ),
                        ),
                      ),
                      Text(" cm"),
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Weight",
                          style: Theme.of(context).textTheme.headline,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          initialValue: widget.user.weightValue,
                          keyboardType: TextInputType.numberWithOptions(
                              signed: false, decimal: true),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: EditMedicalInformationPageForm.accent,
                                width: 1.0,
                              ),
                            ),
                            labelText: "Weight",
                          ),
                          onChanged: (value) {
                            widget.user.weightValue = value;
                          },
                        ),
                      ),
                      Text(" Kg"),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    "Medical Conditions",
                    style: Theme.of(context).textTheme.headline,
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    initialValue: widget.user.medicalConditionsValue,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: EditMedicalInformationPageForm.accent,
                          width: 1.0,
                        ),
                      ),
                      labelText: "Enter conditions separated by comma",
                    ),
                    onChanged: (value) {
                      widget.user.medicalConditionsValue = value;
                    },
                  ),
                  SizedBox(height: 24),
                  Text(
                    "Medical Notes",
                    style: Theme.of(context).textTheme.headline,
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    initialValue: widget.user.medicalNotesValue,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: EditMedicalInformationPageForm.accent,
                          width: 1.0,
                        ),
                      ),
                      labelText: "Enter notes separated by comma",
                    ),
                    onChanged: (value) {
                      widget.user.medicalNotesValue = value;
                    },
                  ),
                  SizedBox(height: 24),
                  Text(
                    "First Emergency Contact",
                    style: Theme.of(context).textTheme.headline,
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    initialValue: widget.user.cnt1Name,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: EditMedicalInformationPageForm.accent,
                          width: 1.0,
                        ),
                      ),
                      labelText: "Enter First Contact Name",
                    ),
                    onChanged: (value) {
                      widget.user.cnt1Name = value;
                    },
                  ),
                  SizedBox(height: 12.0),
                  TextFormField(
                    initialValue: widget.user.cnt1Phone,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: EditMedicalInformationPageForm.accent,
                          width: 1.0,
                        ),
                      ),
                      labelText: "Enter First Contact Phone",
                    ),
                    onChanged: (value) {
                      widget.user.cnt1Phone = value;
                    },
                  ),
                  SizedBox(height: 24),
                  Text(
                    "Second Emergency Contact",
                    style: Theme.of(context).textTheme.headline,
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    initialValue: widget.user.cnt2Name,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: EditMedicalInformationPageForm.accent,
                          width: 1.0,
                        ),
                      ),
                      labelText: "Enter Second Contact Name",
                    ),
                    onChanged: (value) {
                      widget.user.cnt2Name = value;
                    },
                  ),
                  SizedBox(height: 12.0),
                  TextFormField(
                    initialValue: widget.user.cnt2Phone,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: EditMedicalInformationPageForm.accent,
                          width: 1.0,
                        ),
                      ),
                      labelText: "Enter Second Contact Phone",
                    ),
                    onChanged: (value) {
                      widget.user.cnt2Phone = value;
                    },
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  Future _selectDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(1920),
        lastDate: new DateTime(2020));
    if (picked != null)
      setState(
        () => widget.user.dateValue = picked.day.toString() +
            "/" +
            picked.month.toString() +
            "/" +
            picked.year.toString(),
      );
  }

  void _pressedSaveFab(BuildContext context, AppDataProvider model) async {
    await model.updateUserInformation(
      nameValue: widget.user.nameValue,
      dateValue: widget.user.dateValue,
      genderValue: widget.user.genderValue,
      bloodValue: widget.user.bloodValue,
      heightValue: widget.user.heightValue,
      weightValue: widget.user.weightValue,
      medicalConditionsValue: widget.user.medicalConditionsValue,
      medicalNotesValue: widget.user.medicalNotesValue,
      cnt1Name: widget.user.cnt1Name,
      cnt1Phone: widget.user.cnt1Phone,
      cnt2Name: widget.user.cnt2Name,
      cnt2Phone: widget.user.cnt2Phone,
    );
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop();
    }
    print("done");
  }
}
