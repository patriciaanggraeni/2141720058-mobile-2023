import 'package:flutter/material.dart';

import '../../seeder/helper.dart';

class CustomMessageWidaget extends StatelessWidget {
  const CustomMessageWidaget({super.key});

  @override
  Widget build(BuildContext context) {
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
            "Minimal Pesan Satu Permainan",
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
