import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/pages/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plants App',
      theme: ThemeData(
        scaffoldBackgroundColor: Constants.backgroundColor,
        primaryColor: Constants.primaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: Constants.textColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}