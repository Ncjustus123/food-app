import 'package:flutter/material.dart';

class Itemimage extends StatelessWidget {
  const Itemimage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 30, right: 20),
      child: Image(
        image: AssetImage(
          'assets/images/plan1.jpg',
        ),
        fit: BoxFit.fill,
        width: double.infinity,
        height: 150,
      ),
    );
  }
}