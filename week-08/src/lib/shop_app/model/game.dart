import 'package:flutter/cupertino.dart';

class Game {
  String name, image;
  List<String> gameDemoImage;
  int price, stock, quantity;
  double rating;

  Game({
    required this.name,
    required this.price,
    required this.image,
    required this.gameDemoImage,
    required this.stock,
    required this.quantity,
    required this.rating,
  });
}
