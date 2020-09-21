import 'package:flutter/material.dart';
import 'package:food_app/meals_card.dart';
import 'package:food_app/models/category_item.dart';
import 'package:food_app/models/category_list.dart';
import 'package:food_app/models/item_list.dart';
import 'package:food_app/models/search.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SearchBox(
          onChanged: (value) {},
        ),
        Categorylist(),
        ItemList(),
        MealsCard(),
      ],
    );
  }
}

