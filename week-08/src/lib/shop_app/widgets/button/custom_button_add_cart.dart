import 'package:flutter/material.dart';
import '../../seeder/helper.dart';

class CustomButtonAddCart extends StatelessWidget {
  const CustomButtonAddCart({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        side: BorderSide(
          color: Colors.blue.shade200,
          width: 1,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.shopping_cart,
            size: 17,
            color: Colors.lightBlueAccent,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            "Add+",
            style: Helper.customStyleFonts(
              size: 14,
              weigth: FontWeight.bold,
              spacing: 1.0,
              color: Colors.lightBlueAccent),
          ),
        ],
      ),
    );
  }
}
