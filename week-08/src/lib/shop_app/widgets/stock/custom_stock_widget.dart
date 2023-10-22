import 'package:flutter/material.dart';
import '../../model/game.dart';
import '../../seeder/helper.dart';

class CustomStockWidget extends StatelessWidget {
  const CustomStockWidget({super.key, required this.items});
  final Game items;

  @override
  Widget build(BuildContext context) {

    return Text(
      "Available Copy: ${items.stock.toString()}",
      style: Helper.customStyleFonts(
        size: 15,
        weigth: FontWeight.bold,
        spacing: 1.0,
        color: Colors.lightBlueAccent),
    );
  }
}
