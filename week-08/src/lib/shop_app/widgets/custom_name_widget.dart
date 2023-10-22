import 'package:flutter/material.dart';
import '../model/game.dart';
import '../seeder/helper.dart';
import 'button/custom_button_add_cart.dart';

class CustomWidgetDetailItemName extends StatelessWidget {
  const CustomWidgetDetailItemName ({super.key, required this.items});
  final Game items;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            items.name,
            overflow: TextOverflow.clip,
            style: Helper.customStyleFonts(
                size: 30,
                weigth: FontWeight.bold,
                spacing: 1.0,
                color: Colors.lightBlueAccent),
          ),
        ),
        const CustomButtonAddCart(),
        const SizedBox(height: 20),
      ],
    );
  }
}
