 import 'package:flutter/material.dart';

AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Icon(Icons.menu, color: Colors.black),
      title: RichText(
        text: TextSpan(
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          children: [
            TextSpan(
              text: "Jackie's",
            ),
            TextSpan(
              text: "PotsnGrills",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Icon(Icons.notifications, color: Colors.black),
        ),
      ],
    );
  }
