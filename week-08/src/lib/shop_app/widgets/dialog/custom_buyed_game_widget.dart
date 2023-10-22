import 'package:flutter/material.dart';
import 'package:src/shop_app/model/game.dart';

import '../../seeder/helper.dart';

class CustomBuyedGameWidget extends StatelessWidget {
  const CustomBuyedGameWidget({super.key, required this.items});
  final Game items;

  @override
  Widget build(BuildContext context) {
    items.stock -= items.quantity;
    items.quantity = 0;

    return Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100),
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Text(
                "Game Berhasil Dibeli",
                style: Helper.customStyleFonts(
                    size: 15,
                    weigth: FontWeight.bold,
                    spacing: 1.0,
                    color: Colors.lightBlueAccent
                )
            ),
          ),
        )
    );
  }
}
