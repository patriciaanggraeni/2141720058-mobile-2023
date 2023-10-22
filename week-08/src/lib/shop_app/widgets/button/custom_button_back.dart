import 'package:flutter/material.dart';
import '../../model/game.dart';

class CustomButtonBack extends StatelessWidget {
  const CustomButtonBack({super.key, required this.items, required this.context});
  final Game items;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {

    return Positioned(
      top: 15,
      left: 15,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(this.context);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: const CircleBorder(),
        ),
        child: const Icon(
          Icons.arrow_back,
          size: 24,
          color: Colors.lightBlueAccent,
        ),
      ),
    );
  }
}
