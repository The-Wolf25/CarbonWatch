import 'package:carbonwatch/Screens/EnterName.dart';
import 'package:carbonwatch/Screens/Onboard.dart';
import 'package:carbonwatch/Screens/Page2.dart';
import 'package:carbonwatch/Screens/options.dart';
import 'package:carbonwatch/Screens/page4.dart';
import 'package:carbonwatch/Screens/page5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: onboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
