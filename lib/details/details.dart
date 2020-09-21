import 'package:flutter/material.dart';
import 'package:food_app/details/details_appbar.dart';
import 'package:food_app/details/item_image.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[300],
      appBar: detailsAppbar(),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Itemimage(),
        SizedBox(height: 20),
        Expanded(
          child: Iteminfo(),
        ),
      ],
    );
  }
}

class Iteminfo extends StatelessWidget {
  const Iteminfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.location_on,
              ),
              SizedBox(width: 10),
              Text('Jackies PnG')
            ],
          ),
        ],
      ),
    );
  }
}
