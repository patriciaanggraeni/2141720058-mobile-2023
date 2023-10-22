import 'package:flutter/material.dart';
import 'package:src/shop_app/pages/game_home_page.dart';

void main() => runApp(const ShopApp());

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Happy Shoping App",
      home: Scaffold(
        body: GameHomePage(),
      ),
    );
  }
}
