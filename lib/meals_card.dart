import 'package:flutter/material.dart';

class MealsCard extends StatelessWidget {
  const MealsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            ' Offers & Meals',
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Container(
            width: double.infinity,
            height: 165,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/plan 9.jpg'),
              ),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF000000).withOpacity(0.7),
                    Color(0xFF000000).withOpacity(0.7),
                  ],
                ),
              ),
              child: Row(
                children: <Widget>[
                  Text('  ',
                      style: TextStyle(fontSize: 150, color: Colors.white)),
                  Padding(
                    padding: const EdgeInsets.only(left: 110.0),
                    child: Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(
                              text: 'Get Discount of \n',
                              style: TextStyle(fontSize: 16),
                            ),
                            TextSpan(
                              text: '30% \n',
                              style: TextStyle(fontSize: 45),
                            ),
                            TextSpan(
                              text: "at Jackie's Pots n Grills \n",
                              style: TextStyle(fontSize: 12),
                            ),
                            TextSpan(
                              text: "on your First Order \n",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
