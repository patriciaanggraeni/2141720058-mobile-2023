import 'package:flutter/material.dart';
import '../../seeder/helper.dart';

class CustomButtonBuy extends StatelessWidget {
  const CustomButtonBuy({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
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
}
