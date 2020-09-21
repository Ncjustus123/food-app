import 'package:food_app/models/food_model.dart';

class Food {
  final String imageUrl;
  final int id;
  final  String name;

  Food({
    this.imageUrl,
    this.id,
    this.name,
  });
}
//  Row(
//                         children: <Widget>[
//                           CircleAvatar(
//                             radius: 35.0,
//                             backgroundImage: AssetImage(foodlist[index].imageUrl),
//                           ),
//                           SizedBox(width: 10.0),
//                           Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: <Widget>[
//                               Text(
//                                 foodlist[index].name,
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 15.0,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       );

// final Food bole = Food(
//   // id: 0,
//   // text: 'Bole',
//   // description: 'your favorite',
//   imageUrl: 'assets/images/plan1.jpg',
// );
