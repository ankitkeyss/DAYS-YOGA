import 'package:flutter/material.dart';
import 'package:yoga_apps/screens/home.dart';
import 'package:yoga_apps/screens/startup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
    //  home:  Starrup(),
      home:  Home(),
    );
  }
}

