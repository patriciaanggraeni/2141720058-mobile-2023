import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:src/shop_app/widgets/dialog/custom_confirmation_widget.dart';
import 'package:src/shop_app/widgets/dialog/custom_message_widget.dart';
import '../../model/game.dart';
import '../../seeder/helper.dart';

class CustomButtonBuy extends StatelessWidget {
  const CustomButtonBuy({super.key, required this.items});
  final Game items;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (items.quantity == 0) {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const CustomMessageWidaget();
              }
          );
        } else {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return CustomConfirmationWidget(items: items);
              }
          );
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        side: BorderSide(color: Colors.blue.shade200),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Text("Buy Games",
      style: Helper.customStyleFonts(
        size: 12,
        weigth: FontWeight.bold,
        spacing: 1.0,
        color: Colors.lightBlueAccent)
      ),
    );
  }

  void _showToast() {
    Fluttertoast.showToast(
      msg: "Minimal Membeli Satu Permainan",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.white,
      textColor: Colors.blue.shade200,
      fontSize: 16.0,
    );
  }
}
