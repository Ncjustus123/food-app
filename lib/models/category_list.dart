import 'package:flutter/material.dart';
import 'package:food_app/models/category_item.dart';

class Categorylist extends StatelessWidget {
  const Categorylist({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CategoryItem(
            title: 'Combo Package',
            isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: 'bolle',
            press: () {},
          ),
          CategoryItem(
            title: 'chicken & chips',
            press: () {},
          ),
          CategoryItem(
            title: 'shawarma',
            press: () {},
          ),
        ],
      ),
    );
  }
}
