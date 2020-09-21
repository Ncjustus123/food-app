import 'package:flutter/material.dart';
import 'package:food_app/screen/food_list.dart';
import 'package:food_app/screen/home_screen.dart';
import 'package:food_app/screen/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
