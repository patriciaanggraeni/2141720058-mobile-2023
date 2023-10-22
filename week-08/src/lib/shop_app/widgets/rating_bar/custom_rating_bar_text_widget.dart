import 'package:flutter/material.dart';
import 'package:src/shop_app/model/game.dart';
import '../../seeder/helper.dart';

class CustomRatingBarTextWidget extends StatelessWidget {
  const CustomRatingBarTextWidget({super.key, required this.items});
  final Game items;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .5,
      child: Text(
        items.rating.toString(),
        style: Helper.customStyleFonts(
          size: 15,
          weigth: FontWeight.bold,
          spacing: 1.0,
          color: Colors.lightBlueAccent),
      ),
    );
  }
}
