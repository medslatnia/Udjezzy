import 'package:flutter/material.dart';
import 'package:udjezzy/screens/login.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Udjezzy',
      theme: ThemeData(
        primarySwatch: Colors.red,
        primaryColor: Colors.red,

      ),
      home: LoginScreen(),
    );
  }
}