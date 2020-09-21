import 'package:flutter/material.dart';

class Bottomnavbar extends StatelessWidget {
  const Bottomnavbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.11),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            Icons.home,
            color: Colors.orange,
            size: 25,
          ),
          Icon(
            Icons.favorite_border,
            color: Colors.blueGrey,
            size: 25,
          ),
          Icon(
            Icons.person,
            color: Colors.blueGrey,
            size: 25,
          ),
          Icon(
            Icons.shopping_basket,
            color: Colors.blueGrey,
            size: 25,
          ),
        ],
      ),
    );
  }
}