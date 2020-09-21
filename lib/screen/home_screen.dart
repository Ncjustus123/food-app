import 'package:flutter/material.dart';
import 'package:food_app/models/appbar.dart';
import 'package:food_app/models/body.dart';
import 'package:food_app/models/bottom_nav.dart';

import 'package:food_app/screen/home_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: Bottomnavbar(),
      body: Body(),
    );
  }
}


