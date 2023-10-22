import 'package:flutter/material.dart';
import '../../model/game.dart';
import '../../seeder/helper.dart';

class CustomPriceWidget extends StatelessWidget {
  const CustomPriceWidget({super.key, required this.items});
  final Game items;

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Price:",
          style: Helper.customStyleFonts(
            size: 15,
            weigth: FontWeight.bold,
            spacing: 1.0,
            color: Colors.lightBlueAccent),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Rp${items.price.toString()}",
          style: Helper.customStyleFonts(
            size: 25,
            weigth: FontWeight.bold,
            spacing: 1.0,
            color: Colors.lightBlueAccent),
        ),
      ],
    );
  }
}
