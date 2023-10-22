import 'package:flutter/material.dart';
import 'package:src/shop_app/model/game.dart';
import 'package:src/shop_app/widgets/dialog/custom_buyed_game_widget.dart';

import '../../seeder/helper.dart';

class CustomConfirmationWidget extends StatelessWidget {
  const CustomConfirmationWidget({super.key, required this.items});
  final Game items;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
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
        child: Column(
          children: [
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Game Name: ",
                    style: Helper.customStyleFonts(
                      size: 15,
                      weigth: FontWeight.bold,
                      spacing: 1.0,
                      color: Colors.lightBlueAccent
                    ),
                  ),
                  Text(
                    items.name,
                    style: Helper.customStyleFonts(
                      size: 15,
                      weigth: FontWeight.bold,
                      spacing: 1.0,
                      color: Colors.lightBlueAccent)
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Game Quantity: ",
                      style: Helper.customStyleFonts(
                          size: 15,
                          weigth: FontWeight.bold,
                          spacing: 1.0,
                          color: Colors.lightBlueAccent)
                  ),
                  Text(
                      items.quantity.toString(),
                      style: Helper.customStyleFonts(
                          size: 15,
                          weigth: FontWeight.bold,
                          spacing: 1.0,
                          color: Colors.lightBlueAccent)
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Game Price: ",
                      style: Helper.customStyleFonts(
                          size: 15,
                          weigth: FontWeight.bold,
                          spacing: 1.0,
                          color: Colors.lightBlueAccent)
                  ),
                  Text(
                      items.price.toString(),
                      style: Helper.customStyleFonts(
                          size: 15,
                          weigth: FontWeight.bold,
                          spacing: 1.0,
                          color: Colors.lightBlueAccent)
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade200,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Total Payment: ",
                      style: Helper.customStyleFonts(
                          size: 15,
                          weigth: FontWeight.bold,
                          spacing: 1.0,
                          color: Colors.lightBlueAccent)
                  ),
                  Text(
                      (items.price * items.quantity).toString(),
                      style: Helper.customStyleFonts(
                          size: 15,
                          weigth: FontWeight.bold,
                          spacing: 1.0,
                          color: Colors.lightBlueAccent)
                  ),
                ],
              ),
            ),
            const Spacer(flex: 1,),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return CustomBuyedGameWidget(items: items,);
                    }
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade200,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              child: Text(
                "Konfirmasi",
                  style: Helper.customStyleFonts(
                      size: 15,
                      weigth: FontWeight.bold,
                      spacing: 1.0,
                      color: Colors.white
                  )
              )
            )
          ],
        ),
      ),
    );
  }
}
