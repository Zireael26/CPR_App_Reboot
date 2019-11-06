import 'package:cpr_app/pages/bottom_sheet.dart';
import 'package:cpr_app/widgets/instruction_card_adult.dart';
import 'package:cpr_app/widgets/instruction_card_infant.dart';
import 'package:cpr_app/widgets/nav_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List<double> _accelerometerValues;
  List<double> _userAccelerometerValues;
  List<double> _gyroscopeValues;


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          title: Text(
            "CPR Instructions",
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.black),
          backgroundColor: Colors.white,
          primary: true,
          bottom: TabBar(
            indicatorWeight: 4.0,
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Theme.of(context).accentColor,
            unselectedLabelColor: Colors.black54,
            tabs: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.accessibility_new),
                    Container(width: 16.0),
                    Text("For Adults")
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.child_friendly),
                    Container(width: 16.0),
                    Text("For Infants")
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            InstructionCardAdult(),
            InstructionCardInfant(),
          ],
        ),
        drawer: SideNavDrawer(),
        bottomSheet: PersistentBottomSheet(),
      ),
    );
  }

  void _sendSMS(String message, List<String> recipients) async {
    String _result = await FlutterSms
        .sendSMS(message: message, recipients: recipients)
        .catchError((onError) {
      print(onError);
    });
    print(_result);
  }
}
