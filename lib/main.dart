import 'package:cpr_app/Models/information_provider.dart';
import 'package:cpr_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    builder: (_) => AppDataProvider(),
    child: MyApp(),
  ));
}

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
        primaryColor: Color.fromRGBO(255, 17, 64, 1.0),
        accentColor: Color.fromRGBO(255, 17, 64, 1.0),
        backgroundColor: Color.fromRGBO(244, 244, 244, 1.0),
//        backgroundColor: Colors.transparent,
      ),
      home: HomePage(),
    );
  }
}
