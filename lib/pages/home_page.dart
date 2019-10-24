import 'package:cpr_app/pages/bottom_sheet.dart';
import 'package:cpr_app/widgets/instruction_card_adult.dart';
import 'package:cpr_app/widgets/instruction_card_infant.dart';
import 'package:cpr_app/widgets/nav_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("CPR Instructions"),
          primary: false,
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
}
