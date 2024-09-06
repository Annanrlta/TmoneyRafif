import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tmoney/pages/main_page.dart';
import 'package:tmoney/pages/splash_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SplashhPage(), theme: ThemeData(primarySwatch: Colors.green));
  }
}