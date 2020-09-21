import 'package:flutter/material.dart';
import 'package:food_app/details/details.dart';
import 'package:food_app/models/item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            title: "Bole & Fish",
            shopName: 'jackies PnGs',
            image: 'assets/images/plan1.jpg',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen();
                  },
                ),
              );
            },
          ),
          ItemCard(
            title: "Plantain & Fish",
            shopName: 'jackies PnGs',
            image: 'assets/images/plan2.jpg',
            press: () {},
          ),
          ItemCard(
            title: " Bole, Sauce & Fish",
            shopName: 'jackies PnGs',
            image: 'assets/images/plan5.jpg',
            press: () {},
          ),
          ItemCard(
            title: " Shawarma",
            shopName: 'jackies PnGs',
            image: 'assets/images/plan7.jpg',
            press: () {},
          ),
        ],
      ),
    );
  }
}
