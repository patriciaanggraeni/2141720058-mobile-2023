import 'package:src/shop_app/widgets/price_and_buy/custom_price_widget.dart';

import '../model/game.dart';
import 'package:flutter/material.dart';
import 'button/custom_button_buy_widget.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key, required this.items});
  final Game items;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery
          .of(context)
          .size
          .width,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey.shade200,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomPriceWidget(items: items,),
          const CustomButtonBuy(),
        ],
      ),
    );
  }
}
