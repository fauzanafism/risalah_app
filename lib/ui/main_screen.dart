import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff121214),
        title: Image(image: AssetImage()),
      ),
      body: Center(),
    );
  }
}