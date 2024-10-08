import 'package:flutter/material.dart';
import 'package:flutter_2/login.dart';
import 'package:flutter_2/my_classroom.dart';
import 'package:flutter_2/my_login.dart';
import 'package:flutter_2/my_place.dart';
import 'package:flutter_2/my_layout.dart';
import 'package:flutter_2/my_place2.dart';
import 'my_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}
