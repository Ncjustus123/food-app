import 'package:flutter/material.dart';
import 'package:food_app/models/food_model.dart';
import 'package:food_app/models/message_model.dart';

class FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  List<Food> foodlist;
  List<Message> message;
  myfoodWork() {
    Food bolle = Food(
      id: 0,
      name: 'bole',
      imageUrl: 'assets/images/plan1.jpg',
    );

    Food plantain = Food(
      id: 1,
      name: ' plantain & fish',
      imageUrl: 'assets/images/plan2.jpg',
    );

    message = [
      Message(
        foodname: bolle,
        description: 'get your bole',
      ),
      Message(
        foodname: plantain,
        description: 'get your bole',
      )
    ];

    foodlist = [bolle, plantain];
  }

  @override
  void initState() {
    myfoodWork();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {},
              ),
              Container(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.search, color: Colors.white),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.settings, color: Colors.white),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Food order ',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Text(
                  'App',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w100),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: ListView.builder(
                    itemCount: foodlist.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Bole(
                        image: foodlist[index].imageUrl,
                        text: foodlist[index].name,
                        description: message[index].description,
                      );
                    }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Bole extends StatelessWidget {
  String image;
  String text;
  String description;

  Bole({this.image, this.text, this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 60,
          height: 60,
          child: Image.asset(image, fit: BoxFit.contain),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(text,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                Text(description,
                    style: TextStyle(fontSize: 15, color: Colors.black54)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
