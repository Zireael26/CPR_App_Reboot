import 'package:cpr_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Color.fromRGBO(255, 255, 255, 0.6),
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return MaterialApp(
      title: 'CPR App',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Color.fromRGBO(255, 17, 64, 1.0),
        backgroundColor: Color.fromRGBO(244, 244, 244, 1.0),
//        backgroundColor: Colors.transparent,
      ),
      home: HomePage(),
    );
  }
}
