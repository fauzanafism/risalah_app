import 'package:flutter/material.dart';
import 'package:risalah_app/ui/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: ThemeData(fontFamily: "Montserrat"),
    );
  }
}